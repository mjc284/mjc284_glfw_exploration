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
include CMakeFiles/planets5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/planets5.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/planets5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/planets5.dir/flags.make

CMakeFiles/planets5.dir/glad/src/glad.c.o: CMakeFiles/planets5.dir/flags.make
CMakeFiles/planets5.dir/glad/src/glad.c.o: glad/src/glad.c
CMakeFiles/planets5.dir/glad/src/glad.c.o: CMakeFiles/planets5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/planets5.dir/glad/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/planets5.dir/glad/src/glad.c.o -MF CMakeFiles/planets5.dir/glad/src/glad.c.o.d -o CMakeFiles/planets5.dir/glad/src/glad.c.o -c /home/mjc284/Documents/Work/mjc284_SFML_Exploration/glad/src/glad.c

CMakeFiles/planets5.dir/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/planets5.dir/glad/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mjc284/Documents/Work/mjc284_SFML_Exploration/glad/src/glad.c > CMakeFiles/planets5.dir/glad/src/glad.c.i

CMakeFiles/planets5.dir/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/planets5.dir/glad/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mjc284/Documents/Work/mjc284_SFML_Exploration/glad/src/glad.c -o CMakeFiles/planets5.dir/glad/src/glad.c.s

CMakeFiles/planets5.dir/planets/planets5.cpp.o: CMakeFiles/planets5.dir/flags.make
CMakeFiles/planets5.dir/planets/planets5.cpp.o: planets/planets5.cpp
CMakeFiles/planets5.dir/planets/planets5.cpp.o: CMakeFiles/planets5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/planets5.dir/planets/planets5.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/planets5.dir/planets/planets5.cpp.o -MF CMakeFiles/planets5.dir/planets/planets5.cpp.o.d -o CMakeFiles/planets5.dir/planets/planets5.cpp.o -c /home/mjc284/Documents/Work/mjc284_SFML_Exploration/planets/planets5.cpp

CMakeFiles/planets5.dir/planets/planets5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/planets5.dir/planets/planets5.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mjc284/Documents/Work/mjc284_SFML_Exploration/planets/planets5.cpp > CMakeFiles/planets5.dir/planets/planets5.cpp.i

CMakeFiles/planets5.dir/planets/planets5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/planets5.dir/planets/planets5.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mjc284/Documents/Work/mjc284_SFML_Exploration/planets/planets5.cpp -o CMakeFiles/planets5.dir/planets/planets5.cpp.s

# Object files for target planets5
planets5_OBJECTS = \
"CMakeFiles/planets5.dir/glad/src/glad.c.o" \
"CMakeFiles/planets5.dir/planets/planets5.cpp.o"

# External object files for target planets5
planets5_EXTERNAL_OBJECTS =

Build/planets5: CMakeFiles/planets5.dir/glad/src/glad.c.o
Build/planets5: CMakeFiles/planets5.dir/planets/planets5.cpp.o
Build/planets5: CMakeFiles/planets5.dir/build.make
Build/planets5: CMakeFiles/planets5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Build/planets5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/planets5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/planets5.dir/build: Build/planets5
.PHONY : CMakeFiles/planets5.dir/build

CMakeFiles/planets5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/planets5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/planets5.dir/clean

CMakeFiles/planets5.dir/depend:
	cd /home/mjc284/Documents/Work/mjc284_SFML_Exploration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration /home/mjc284/Documents/Work/mjc284_SFML_Exploration/CMakeFiles/planets5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/planets5.dir/depend

