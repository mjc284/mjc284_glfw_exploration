/* Program to simulate multiple particles in different conditions. */
#include "../glad/include/glad/glad.h"
#include <GLFW/glfw3.h>
#include <iostream>
#include <cmath>

/* Change these parameters to simulate particles in different conditions (etc liquid or gas). */
#define no_particle 300
#define particle_radius 0.01
#define collision_coefficient 0.95
#define grav_accel -1
#define timestep 1
#define random_vel 1

using namespace std;

float dot(float* x, float* y, char dim)
{
  float ans = 0;
  for (int i = 0; i < dim; i++)
  {
    ans += *(x+i) * *(y+i);
  }
  return ans;
}

float mag(float* x, char dim)
{
  float ans = 0;
  for (int i = 0; i < dim; i++)
  {
    ans += *(x+i) * *(x+i);
  }
  return sqrt(ans);
}

float del_t = timestep;

class Particle
{
public:

  float mass = 1;
  float radius = particle_radius;
  float pos[2] = {0, 0};
  float vel[2] = {0, 0};
  float accel[2] = {0, 0.001 * grav_accel};
  char touching = 0;
  void touch(Particle* particle)
  {
    float direction[2] = {0, 0};
    float pos_rel[2] = {pos[0] - particle->pos[0], pos[1] - particle->pos[1]};
    float vel_rel[2] = {vel[0] - particle->vel[0], vel[1] - particle->vel[1]};
    float distance = mag(pos_rel, 2);
    direction[0] = pos_rel[0]/distance;
    direction[1] = pos_rel[1]/distance;
    float dot_one = dot(vel, direction, 2);
    float dot_two = dot(particle->vel, direction, 2);
    float vel_norm = dot(vel_rel, direction, 2);
    if(distance < (radius + particle->radius))
    {
      if(vel_norm < 0)
      {
        vel[0] += collision_coefficient * (dot_two - dot_one) * direction[0];
        vel[1] += collision_coefficient * (dot_two - dot_one) * direction[1];
        particle->vel[0] += collision_coefficient * (dot_one - dot_two) * direction[0];
        particle->vel[1] += collision_coefficient * (dot_one - dot_two) * direction[1];
      }
    }
  }
  void update_vel()
  {
    vel[0] += accel[0] * del_t;
    vel[1] += accel[1] * del_t;
  }
  void update_pos()
  {
    pos[0] += vel[0] * del_t;
    pos[1] += vel[1] * del_t;
  }
};

class Boundary
{
public:
  void touch(Particle* particle)
  {
    if(particle->pos[0] - particle->radius < -1)
    {
      if(particle->vel[0] < 0)
        particle->vel[0] += (-1 - collision_coefficient) * particle->vel[0];
      particle->pos[0] = -1 + particle->radius;
    }
    if(particle->pos[0] + particle->radius > 1)
    {
      if(particle->vel[0] > 0)
        particle->vel[0] += (-1 - collision_coefficient) * particle->vel[0];
      particle->pos[0] = 1 - particle->radius;
    }
    
    if(particle->pos[1] - particle->radius < -1)
    {
      if(particle->vel[1] < 0)
        particle->vel[1] += (-1 - collision_coefficient) * particle->vel[1];
      particle->pos[1] = -1 + particle->radius;
    }
    if(particle->pos[1] + particle->radius > 1)
    {
      if(particle->vel[1] > 0)
        particle->vel[1] += (-1 - collision_coefficient) * particle->vel[1];
      particle->pos[1] = 1 - particle->radius;
    }
  }
};

int main(void)
{
  GLFWwindow* window;

  if (!glfwInit())
      return -1;

  window = glfwCreateWindow(600, 600, "Particles", NULL, NULL);
  if (!window)
  {
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);
  gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

  //Generate particles with desired radius and velocity.
  Particle particle[no_particle];
  for(int i = 0; i < no_particle; i++)
  {
    particle[i].pos[0] = -0.5 + particle[i].radius * (i%2);
    particle[i].pos[1] = -0.5 + particle[i].radius * 2 * i;
    if(random_vel)
    {
      particle[i].vel[0] = (rand()%20 - 10) / 9;
      particle[i].vel[1] = (rand()%20 - 10) / 9;
    }
  }

  Boundary boundary;

  while (!glfwWindowShouldClose(window))
  {
    float ratio;
    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    ratio = width/ (float)height;
    glViewport(0, 0, width, height);
    glClear(GL_COLOR_BUFFER_BIT); 

    //Interact with boundaries and accelerate with gravity.
    for(int i = 0; i < no_particle; i++)
    {
      particle[i].update_vel();
      boundary.touch(&particle[i]);
    }

    //Interact with particles.
    for(int i = 0; i < no_particle; i++)
    {
      for(int j = i + 1; j < no_particle; j++)
      {
        particle[i].touch(&particle[j]);
      }
    }

    //Update positions.
    for(int i = 0; i < no_particle; i++)
    {
      particle[i].update_pos();
    }

    //Draw circles for particles.
    int theta = 0;
    int resolution = 180;
    for(int i = 0; i < no_particle; i++)
    {
      glBegin(GL_POLYGON);
      for(int j = 0; j < 360; j += 360/resolution)
      {
        glVertex2f(particle[i].pos[0] + particle[i].radius * cos(j * M_PI / 180), particle[i].pos[1] + particle[i].radius * sin(j * M_PI / 180));
      }
      glEnd();
    }

    glfwSwapBuffers(window);
    glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
