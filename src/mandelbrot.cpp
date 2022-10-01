/* Program to move around and zoom in on the mandelbrot set. */
/* Arrow keys: Move around, Spacebar: Zoom in, D-key: Zoom out. */

#include "../glad/include/glad/glad.h"
#include <GLFW/glfw3.h>
#include <iostream>
#include <cmath>
#include <complex>

#define MAX_STEPS 25
#define RESOLUTION 0.008

int threshold = 4;

using namespace std;

int iterate(complex<double> c, double threshold)
{
    int i = 1;
    complex<double> power = {0, 1};
    complex<double> z = c;
    complex<double> neg_one = {-1, 1};
    while((i < MAX_STEPS) and (real(z*conj(z)) < threshold))
    {
        /*Select equation to view shape*/
        //z = z*z*z + c; //wierd peach
        //z = pow(z, -2) + c; //triangle fractal
        //z = pow(z, 1.5) + c; //butterfly
        //z = pow(z, -0.5) + c; //spooky feet
        
        z = z*z + c; //normal mandelbrot
        i++;
    }
    return i;
}

int main(void)
{

  GLFWwindow* window;

  if (!glfwInit())
      return -1;

  window = glfwCreateWindow(1000, 1000, "Mandelbrot", NULL, NULL);
  if (!window)
  {
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);
  gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

  float shiftx = -1;
  float shifty = 0;
  complex<double> pixel;
  float colordata;
  float scalefactor = 1;

  while (!glfwWindowShouldClose(window))
  {
    float ratio;
    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    ratio = width/ (float)height;
    glViewport(0, 0, width, height);
    glClear(GL_COLOR_BUFFER_BIT); 

    //Plot mandelbrot.
    for(float x = -1; x < 1; x += RESOLUTION)
    {
        for(float y = -1; y < 1; y += RESOLUTION)
        {
            glBegin(GL_POINTS);
            glVertex2f(x,y);
            pixel = {x*scalefactor + shiftx, y*scalefactor + shifty};
            colordata = iterate(pixel, 4)/25;
            glColor3f(colordata,colordata,colordata);
            glEnd();
        }
    }

    //Allow key-press actions.
    int space = glfwGetKey(window, GLFW_KEY_SPACE);
    int left = glfwGetKey(window, GLFW_KEY_LEFT);
    int right = glfwGetKey(window, GLFW_KEY_RIGHT);
    int up = glfwGetKey(window, GLFW_KEY_UP);
    int down = glfwGetKey(window, GLFW_KEY_DOWN);
    int dee = glfwGetKey(window, GLFW_KEY_D);

    if (dee == GLFW_PRESS)
    {
        scalefactor *= 1.1;
    }
    if (space == GLFW_PRESS)
    {
        scalefactor *= 0.9;
    }
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

    glfwSwapBuffers(window);
    glfwPollEvents();
  }

  glfwDestroyWindow(window);
  glfwTerminate();
  return 0;

}
