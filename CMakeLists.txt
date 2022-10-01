cmake_minimum_required(VERSION 3.17)

project(mjc284_SFML_Exploration)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Build)

add_executable(particles glad/src/glad.c src/particles.cpp)
target_link_libraries(particles GL dl glfw)

add_executable(mandelbrot glad/src/glad.c src/mandelbrot.cpp)
target_link_libraries(mandelbrot GL dl glfw)

add_executable(dimensions glad/src/glad.c src/dimensions.cpp)
target_link_libraries(dimensions GL dl glfw)

add_executable(box glad/src/glad.c src/box.cpp)
target_link_libraries(box GL dl glfw)

add_executable(planets_orbit glad/src/glad.c src/planets/planets_orbit.cpp)
target_link_libraries(planets_orbit GL dl glfw)

add_executable(planets_random glad/src/glad.c src/planets/planets_random.cpp)
target_link_libraries(planets_random GL dl glfw)

add_executable(planets_uniform glad/src/glad.c src/planets/planets_uniform.cpp)
target_link_libraries(planets_uniform GL dl glfw)

