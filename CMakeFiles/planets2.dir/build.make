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
CMAKE_SOURCE_DIR = /home/mjc284/Documents/Work/mjc284_SFML_Exploration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mjc284/Documents/Work/mjc284_SFML_Exploration

# Include any dependencies generated for this target.
include CMakeFiles/planets2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/planets2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/planets2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/planets2.dir/flags.make

CMakeFiles/planets2.dir/glad/src/glad.c.o: CMakeFiles/planets2.dir/flags.make
CMakeFiles/planets2.dir/glad/src/glad.c.o: glad/src/glad.c
CMakeFiles/planets2.dir/glad/src/glad.c.o: CMakeFiles/planets2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/planets2.dir/glad/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/planets2.dir/glad/src/glad.c.o -MF CMakeFiles/planets2.dir/glad/src/glad.c.o.d -o CMakeFiles/planets2.dir/glad/src/glad.c.o -c /home/mjc284/Documents/Work/mjc284_SFML_Exploration/glad/src/glad.c

CMakeFiles/planets2.dir/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/planets2.dir/glad/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mjc284/Documents/Work/mjc284_SFML_Exploration/glad/src/glad.c > CMakeFiles/planets2.dir/glad/src/glad.c.i

CMakeFiles/planets2.dir/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/planets2.dir/glad/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mjc284/Documents/Work/mjc284_SFML_Exploration/glad/src/glad.c -o CMakeFiles/planets2.dir/glad/src/glad.c.s

CMakeFiles/planets2.dir/planets/planets2.cpp.o: CMakeFiles/planets2.dir/flags.make
CMakeFiles/planets2.dir/planets/planets2.cpp.o: planets/planets2.cpp
CMakeFiles/planets2.dir/planets/planets2.cpp.o: CMakeFiles/planets2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/planets2.dir/planets/planets2.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/planets2.dir/planets/planets2.cpp.o -MF CMakeFiles/planets2.dir/planets/planets2.cpp.o.d -o CMakeFiles/planets2.dir/planets/planets2.cpp.o -c /home/mjc284/Documents/Work/mjc284_SFML_Exploration/planets/planets2.cpp

CMakeFiles/planets2.dir/planets/planets2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/planets2.dir/planets/planets2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mjc284/Documents/Work/mjc284_SFML_Exploration/planets/planets2.cpp > CMakeFiles/planets2.dir/planets/planets2.cpp.i

CMakeFiles/planets2.dir/planets/planets2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/planets2.dir/planets/planets2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mjc284/Documents/Work/mjc284_SFML_Exploration/planets/planets2.cpp -o CMakeFiles/planets2.dir/planets/planets2.cpp.s

# Object files for target planets2
planets2_OBJECTS = \
"CMakeFiles/planets2.dir/glad/src/glad.c.o" \
"CMakeFiles/planets2.dir/planets/planets2.cpp.o"

# External object files for target planets2
planets2_EXTERNAL_OBJECTS =

Build/planets2: CMakeFiles/planets2.dir/glad/src/glad.c.o
Build/planets2: CMakeFiles/planets2.dir/planets/planets2.cpp.o
Build/planets2: CMakeFiles/planets2.dir/build.make
Build/planets2: CMakeFiles/planets2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Build/planets2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/planets2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/planets2.dir/build: Build/planets2
.PHONY : CMakeFiles/planets2.dir/build

CMakeFiles/planets2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/planets2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/planets2.dir/clean

CMakeFiles/planets2.dir/depend:
	cd /home/mjc284/Documents/Work/mjc284_SFML_Exploration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles/planets2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/planets2.dir/depend

