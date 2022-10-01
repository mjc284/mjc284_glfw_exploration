/* Program to simulate n-dimensional hypercubes. */

#include "../glad/include/glad/glad.h"
#include <GLFW/glfw3.h>
#include <iostream>
#include <cmath>

/* Change the 'dimensions' to desired value. */
#define dimensions 4

using namespace std;

int main(void)
{

  GLFWwindow* window;

  if (!glfwInit())
      return -1;

  window = glfwCreateWindow(900, 900, "Dimensions", NULL, NULL);
  if (!window)
  {
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);
  gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

  int no_verticies = int(pow(2, dimensions));
  float verticies[dimensions][no_verticies]; //Matrix to fill with verticies coordinate information.
  
  for(unsigned int i = 0; i < no_verticies; i++)
  {
    for(unsigned int j = 0; j < dimensions; j++)
    {
      //Fill the 'verticies' matrix with coordinates of a unit n-dimensional box and shift left by 0.5.
      verticies[j][i] = ((i >> j) & 0b1) - 0.5;
    }
  }

  float step_angle = 0.01; //in rad

  float forward[dimensions][dimensions][dimensions] = {0}; //Set of rotation matricies.

  for(int i = 0; i < dimensions - 1; i++)
  {
    for(int j = 0; j < i; j++)
    {
      forward[i][j][j] = 1;
    }
    forward[i][i][i] = cos(step_angle);
    forward[i][i+1][i] = sin(step_angle);
    forward[i][i+1][i+1] = cos(step_angle);
    forward[i][i][i+1] = -1 * sin(step_angle);
    for(int j = i + 2; j < dimensions; j++)
    {
      forward[i][j][j] = 1;
    }
  }
  forward[dimensions - 1][0][0] = cos(step_angle);
  forward[dimensions - 1][dimensions - 1][0] = -sin(step_angle);
  forward[dimensions - 1][0][dimensions - 1] = sin(step_angle);
  forward[dimensions - 1][dimensions - 1][dimensions - 1] = cos(step_angle);
  for(int j = 1; j < dimensions - 1; j++)
  {
    forward[dimensions - 1][j][j] = 1;
  }

  float reverse[dimensions][dimensions][dimensions] = {0}; //Set of reverse-rotation matricies.

  for(int i = 0; i < dimensions; i++)
  {
    for(int j = 0; j < dimensions; j++)
    {
      for(int k = 0; k < dimensions; k++)
      {
        reverse[i][j][k] = 0;
      }
    }
  }

  for(int i = 0; i < dimensions - 1; i++)
  {
    for(int j = 0; j < i; j++)
    {
      reverse[i][j][j] = 1;
    }
    reverse[i][i][i] = cos(-1 * step_angle);
    reverse[i][i+1][i] = sin(-1 * step_angle);
    reverse[i][i+1][i+1] = cos(-1 * step_angle);
    reverse[i][i][i+1] = -1 * sin(-1 * step_angle);
    for(int j = i + 2; j < dimensions - 2; j++)
    {
      reverse[i][j][j] = 1;
    }
  }
  reverse[dimensions - 1][0][0] = cos(-1 * step_angle);
  reverse[dimensions - 1][dimensions - 1][0] = -sin(-1 * step_angle);
  reverse[dimensions - 1][0][dimensions - 1] = sin(-1 * step_angle);
  reverse[dimensions - 1][dimensions - 1][dimensions - 1] = cos(-1 * step_angle);
  for(int j = 1; j < dimensions - 1; j++)
  {
    reverse[dimensions - 1][j][j] = 1;
  }

  float mixed[dimensions][dimensions] = {0};

  for(int i = 0; i < dimensions; i++)
  {
    for(int j = 0; j < dimensions; j++)
    {
      //Initialize 'mixed' as an identity matrix.
      if(i == j)
      {
        mixed[i][j] = 1;
      }
      else
      {
        mixed[i][j] = 0;
      }
    }
  }

  int rev = 0;
  float temp[dimensions] = {0};

  for(int mode = 0; mode < dimensions-1; mode++)
  {
    //Multiply 'mixed' by rotation matricies in all axes.
    for(int i = 0; i < dimensions; i++)
    {
      for(int j = 0; j < dimensions; j++)
      {
        for(int k = 0; k < dimensions; k++)
        {
          if(rev == 0)
          {
            temp[j] += mixed[k][i] * forward[mode][j][k];
          }
          else
          {
            temp[j] += mixed[k][i] * reverse[mode][j][k];
          }
        }
      }
      for(int j = 0; j < dimensions; j++)
      {
        mixed[j][i] = temp[j];
        temp[j] = 0;
      }
    }

  }

  float scale = 0.5;
  float sqdistance = 0;

  while (!glfwWindowShouldClose(window))
  {
    float ratio;
    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    ratio = width/ (float)height;
    glViewport(0, 0, width, height);
    glClear(GL_COLOR_BUFFER_BIT); 

    for(int i = 0; i < no_verticies; i++)
    {
      for(int j = i+1; j < no_verticies; j++)
      {
        sqdistance = 0;
        for(int k = 0; k < dimensions; k++)
        {
          sqdistance += (verticies[k][i] - verticies[k][j]) * (verticies[k][i] - verticies[k][j]);
        }

        //Draw a line between all verticies of the box where where the distance is 1 (basically outline of the box) in 2D projections.
        if(sqdistance < 1.1)
        {
          glBegin(GL_LINES);
          glVertex2f(scale * verticies[0][i], scale * verticies[1][i]);
          glVertex2f(scale * verticies[0][j], scale * verticies[1][j]);
          glEnd();
        }
      }
    }

    //Transform verticies by the 'mixed' rotation matrix.
    for(int i = 0; i < no_verticies; i++)
    {
      for(int j = 0; j < dimensions; j++)
      {
        for(int k = 0; k < dimensions; k++)
        {
          if(rev == 0)
          {
            temp[j] += verticies[k][i] * mixed[j][k];
          }
          else
          {
            temp[j] += verticies[k][i] * mixed[j][k];
          }
        }
      }
      for(int j = 0; j < dimensions; j++)
      {
        verticies[j][i] = temp[j];
        temp[j] = 0;
      }
    }


    int swc = 0;

    glfwSwapBuffers(window);
    glfwPollEvents();
  }

  glfwDestroyWindow(window);
  glfwTerminate();
  return 0;

}
