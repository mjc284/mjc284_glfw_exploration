/* Program to simulate dropping a box with varying collision coefficients. */
#include "../glad/include/glad/glad.h"
#include <GLFW/glfw3.h>
#include <cmath>
#include <iostream>

/* Change the collision_coefficient to desired value. */
#define collision_coefficient 0.5

using namespace std;

int main(void)
{
    GLFWwindow* window;

    if (!glfwInit())
        return -1;

    window = glfwCreateWindow(900, 900, "Box", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);
    gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

    float y_pos = 1;
    float y_vel = 0;
    float y_accel = -5;
    float del_t = 0.01;

    while (!glfwWindowShouldClose(window))
    {
        float ratio;
        int width, height;
        glfwGetFramebufferSize(window, &width, &height);
        ratio = width/ (float)height;
        glViewport(0, 0, width, height);
        glClear(GL_COLOR_BUFFER_BIT); 

        //Collide.
        if(y_pos - 0.1 < 0)
        {
          y_pos = 0.1;
          y_vel -= (1 + collision_coefficient) * y_vel;
        }
        //Fall.
        else
        {
          y_accel = -5 - 1 * y_vel * abs(y_vel);
        }

        y_vel += y_accel * del_t;
        y_pos += y_vel * del_t;

        //Draw ground.
        glColor3f(100, 100, 100);
        glBegin(GL_POLYGON);
        glVertex2f(-1, 0);
        glVertex2f(1, 0);
        glVertex2f(1, -1);
        glVertex2f(-1, -1);
        glEnd();

        //Draw box.
        glBegin(GL_POLYGON);
        glVertex2f(-0.05, y_pos);
        glVertex2f(0.05, y_pos);
        glVertex2f(0.05, y_pos - 0.1);
        glVertex2f(-0.05, y_pos - 0.1);
        glEnd();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
