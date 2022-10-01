# mjc284_glfw_exploration
A set of c++ programs that utilise the GLFW libraries to show mathematical simulations.

## Installation and Setup:
- Clone the repository at the desired location:
```
git clone https://github.com/mjc284/mjc284_glfw_exploration.git
```
    
- Install cmake and glfw libraries:
```
sudo apt-get install cmake libglfw3-dev
```

- Run cmake and build:
```
cd "path-to-cloned-project"
cmake .
make
```
## Running the Simulations:
All simulations are located in the "Build" directory as executables. 

### Box:
Program to simulate dropping a box with varying collision coefficients.\
Variable perameters: collision_coefficient.\
![Box](/Screenshots/box.png "Box")

### Dimensions:
Program to simulate n-dimensional hypercubes.\
Variable perameters: dimensions.\
![Dimensions](/Screenshots/dimensions.png "Dimensions")

### Mandelbrot:
Program to simulate mandelbrot.\
Variable perameters: play around with the equation.\
Arrow keys: Move around, Spacebar: Zoom in, D-key: Zoom out.\
![Mandelbrot](/Screenshots/mandelbrot.png "Mandelbrot")

### Particles:
Program to simulate multiple particles in different conditions.\
Variable perameters: no_particle, particle_radius, collision_coefficient, grav_accel, timestep, random_vel (random_vel is a boolean value to assign initial random velocities or not).\
![Particles](/Screenshots/particles.png "Particles")

### Planets Orbit:
Program to simulate planets orbiting a central star. Planets interact by Newtonian gravity and collide with momentum and mass conservation.\
Variable perameters: num_planets.\
Spacebar: Zoom in, D-key: Zoom out.\
![Planets_Orbit](/Screenshots/planets_orbit.png "Planets_Orbit")

### Planets Random:
Program to simulate planets with random initial velocities. Planets interact by Newtonian gravity and collide with momentum and mass conservation.\
Variable perameters: num_planets.\
Spacebar: Zoom in, D-key: Zoom out.\
![Planets_Random](/Screenshots/planets_random.png "Planets_Random")

### Planets Uniform:
Program to simulate an array of planets. Planets interact by Newtonian gravity and collide with momentum and mass conservation.\
Arrow keys: Move around.\
![Planets_Uniform](/Screenshots/planets_uniform.png "Planets_Uniform")

## Varying Perameters:
For all simulations, change the '#define' parameters of the source files in the src folder to v simulation conditions.
- Move to the src folder:
```
cd src
```
- Change the '#define' parameters of desired simulation file and save.
- Rebuild with cmake:
```
cd ..
make
```
- Simulations in the 'Build' file should be altered.
