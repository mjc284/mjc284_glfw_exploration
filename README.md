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

###Box:
Program to simulate dropping a box with varying collision coefficients.
Variable perameters: collision_coefficient.
![Box](/Screenshots/box.png "Box")

###Dimensions:
Program to simulate n-dimensional hypercubes.
Variable perameters: dimensions.
![Dimensions](/Screenshots/dimensions.png "Dimensions")



## Varying Perameters:
For all simulations, change the '#define' parameters of the source files in the src folder to v simulation conditions.
- Clone the repository at the desired location:
```
cd src
```
- Change the '#define' parameters and save.
- Rebuild with cmake:
```
cd ..
make
```
- Simulations in the 'Build' file should be altered.
