#include "../../glad/include/glad/glad.h"
#include <GLFW/glfw3.h>
#include <iostream>
#include <cmath>
#include <vector>

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

float del_t = 0.00001;
float const_G = 1;

void update(float* updated, float* updater)
{
  *updated += *updater * del_t;
  *(updated + 1) += *(updater + 1) * del_t;
}

float scalefactor = 0.5;
float shiftx = 0;
float shifty = 0;

class Particle
{
public:

  float mass = 1;
  float radius = 0.01;
  float pos[2] = {0, 0};
  float vel[2] = {0, 0};
  float accel[2] = {0, 0};
  char touching = 0;
  bool interact(Particle* particle)
  {
    float pos_rel[2] = {particle->pos[0] - pos[0], particle->pos[1] - pos[1]};
    float distance = mag(pos_rel, 2);
    if((distance < (radius + particle->radius)) and (touching == 0))
    {
      /* Collide. */

      //Add volumes of merging planets.
      radius = cbrtf(pow(radius, 3) + pow(particle->radius, 3));
      mass += particle->mass;

      //Specify center of mass.
      pos[0] += pos_rel[0]*particle->mass/(particle->mass + mass);
      pos[1] += pos_rel[1]*particle->mass/(particle->mass + mass);
      
      //Define new velocity of merger according to momentum conservation.
      vel[0] = (mass * vel[0] + particle->mass * particle->vel[0])/(mass + particle->mass);
      vel[1] = (mass * vel[1] + particle->mass * particle->vel[1])/(mass + particle->mass);
      
      //Initialize acceleration.
      accel[0] = 0;
      accel[1] = 0;
      return 1;
    }
    else
    {
      //Gravitate according to Newton's model.
      float accel1 = 1 * const_G * particle->mass / (distance * distance) / distance;
      accel[0] += accel1 * pos_rel[0];
      accel[1] += accel1 * pos_rel[1];
      float accel2 = -1 * const_G * mass / (distance * distance) / distance;
      particle->accel[0] += accel2 * pos_rel[0];
      particle->accel[1] += accel2 * pos_rel[1];
      return 0;
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

int main(void)
{

  GLFWwindow* window;

  if (!glfwInit())
      return -1;

  window = glfwCreateWindow(900, 900, "Uniform Planets", NULL, NULL);
  if (!window)
  {
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);
  gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

  float var1 = 0;
  float var2 = 0;

  int n_planets = 100;
  vector<Particle> planets(n_planets);
  for(int i = 0; i < n_planets; i++)
  {
    var1 = i%10;
    var2 = i - var1;
    planets[i].pos[0] = -0.9 + 0.02 * var2;
    planets[i].pos[1] = 0.9 - 0.2 * var1;
  }

  while (!glfwWindowShouldClose(window))
  {
    float ratio;
    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    ratio = width/ (float)height;
    glViewport(0, 0, width, height);
    glClear(GL_COLOR_BUFFER_BIT); 

    //Initialize accelerations.
    for(int i = 0; i < n_planets; i++)
    {
      planets[i].accel[0] = 0;
      planets[i].accel[1] = 0;
    }

    //Interact with planets.
    for(int i = 0; i < n_planets; i++)
    {
      if(n_planets > 1)
      {
        for(int j = i + 1; j < n_planets; j++)
        {
          if(planets[i].interact(&planets[j]))
          {
            planets.erase(planets.begin() + j);
            n_planets -= 1;
          }
          planets[i].update_vel();
          planets[j].update_vel();
          planets[i].update_pos();
          planets[j].update_pos();
        }
      }
      else
      {
        planets[i].update_vel();
        planets[i].update_pos();
      }
    }

    //Allow key-press actions.
    int left = glfwGetKey(window, GLFW_KEY_LEFT);
    int right = glfwGetKey(window, GLFW_KEY_RIGHT);
    int up = glfwGetKey(window, GLFW_KEY_UP);
    int down = glfwGetKey(window, GLFW_KEY_DOWN);

    if(left == GLFW_PRESS)
    {
        shiftx -= scalefactor/10;
    }
    if(right == GLFW_PRESS)
    {
        shiftx += scalefactor/10;
    }
    if(up == GLFW_PRESS)
    {
        shifty += scalefactor/10;
    }
    if(down == GLFW_PRESS)
    {
        shifty -= scalefactor/10;
    }

    //Draw planets.
    int resolution = 180;
    for(int i = 0; i < n_planets; i++)
    {
      glBegin(GL_POLYGON);
      for(int j = 0; j < 360; j += 360/resolution)
      {
        glVertex2f((planets[i].pos[0] - shiftx) * scalefactor + planets[i].radius * cos(j * M_PI / 180) * scalefactor, (planets[i].pos[1] - shifty) * scalefactor + planets[i].radius * sin(j * M_PI / 180) * scalefactor);
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
