# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mjc284/Documents/Work/mjc284_glfw_exploration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mjc284/Documents/Work/mjc284_glfw_exploration

# Include any dependencies generated for this target.
include CMakeFiles/planets_uniform.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/planets_uniform.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/planets_uniform.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/planets_uniform.dir/flags.make

CMakeFiles/planets_uniform.dir/glad/src/glad.c.o: CMakeFiles/planets_uniform.dir/flags.make
CMakeFiles/planets_uniform.dir/glad/src/glad.c.o: glad/src/glad.c
CMakeFiles/planets_uniform.dir/glad/src/glad.c.o: CMakeFiles/planets_uniform.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mjc284/Documents/Work/mjc284_glfw_exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/planets_uniform.dir/glad/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/planets_uniform.dir/glad/src/glad.c.o -MF CMakeFiles/planets_uniform.dir/glad/src/glad.c.o.d -o CMakeFiles/planets_uniform.dir/glad/src/glad.c.o -c /home/mjc284/Documents/Work/mjc284_glfw_exploration/glad/src/glad.c

CMakeFiles/planets_uniform.dir/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/planets_uniform.dir/glad/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mjc284/Documents/Work/mjc284_glfw_exploration/glad/src/glad.c > CMakeFiles/planets_uniform.dir/glad/src/glad.c.i

CMakeFiles/planets_uniform.dir/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/planets_uniform.dir/glad/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mjc284/Documents/Work/mjc284_glfw_exploration/glad/src/glad.c -o CMakeFiles/planets_uniform.dir/glad/src/glad.c.s

CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o: CMakeFiles/planets_uniform.dir/flags.make
CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o: src/planets/planets_uniform.cpp
CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o: CMakeFiles/planets_uniform.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mjc284/Documents/Work/mjc284_glfw_exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o -MF CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o.d -o CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o -c /home/mjc284/Documents/Work/mjc284_glfw_exploration/src/planets/planets_uniform.cpp

CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mjc284/Documents/Work/mjc284_glfw_exploration/src/planets/planets_uniform.cpp > CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.i

CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mjc284/Documents/Work/mjc284_glfw_exploration/src/planets/planets_uniform.cpp -o CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.s

# Object files for target planets_uniform
planets_uniform_OBJECTS = \
"CMakeFiles/planets_uniform.dir/glad/src/glad.c.o" \
"CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o"

# External object files for target planets_uniform
planets_uniform_EXTERNAL_OBJECTS =

Build/planets_uniform: CMakeFiles/planets_uniform.dir/glad/src/glad.c.o
Build/planets_uniform: CMakeFiles/planets_uniform.dir/src/planets/planets_uniform.cpp.o
Build/planets_uniform: CMakeFiles/planets_uniform.dir/build.make
Build/planets_uniform: CMakeFiles/planets_uniform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mjc284/Documents/Work/mjc284_glfw_exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Build/planets_uniform"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/planets_uniform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/planets_uniform.dir/build: Build/planets_uniform
.PHONY : CMakeFiles/planets_uniform.dir/build

CMakeFiles/planets_uniform.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/planets_uniform.dir/cmake_clean.cmake
.PHONY : CMakeFiles/planets_uniform.dir/clean

CMakeFiles/planets_uniform.dir/depend:
	cd /home/mjc284/Documents/Work/mjc284_glfw_exploration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mjc284/Documents/Work/mjc284_glfw_exploration /home/mjc284/Documents/Work/mjc284_glfw_exploration /home/mjc284/Documents/Work/mjc284_glfw_exploration /home/mjc284/Documents/Work/mjc284_glfw_exploration /home/mjc284/Documents/Work/mjc284_glfw_exploration/CMakeFiles/planets_uniform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/planets_uniform.dir/depend
