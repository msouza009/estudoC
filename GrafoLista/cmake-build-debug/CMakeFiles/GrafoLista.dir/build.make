# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/matheus/estudoC/GrafoLista

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matheus/estudoC/GrafoLista/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/GrafoLista.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GrafoLista.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GrafoLista.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GrafoLista.dir/flags.make

CMakeFiles/GrafoLista.dir/main.c.o: CMakeFiles/GrafoLista.dir/flags.make
CMakeFiles/GrafoLista.dir/main.c.o: /home/matheus/estudoC/GrafoLista/main.c
CMakeFiles/GrafoLista.dir/main.c.o: CMakeFiles/GrafoLista.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matheus/estudoC/GrafoLista/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/GrafoLista.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GrafoLista.dir/main.c.o -MF CMakeFiles/GrafoLista.dir/main.c.o.d -o CMakeFiles/GrafoLista.dir/main.c.o -c /home/matheus/estudoC/GrafoLista/main.c

CMakeFiles/GrafoLista.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GrafoLista.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/matheus/estudoC/GrafoLista/main.c > CMakeFiles/GrafoLista.dir/main.c.i

CMakeFiles/GrafoLista.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GrafoLista.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/matheus/estudoC/GrafoLista/main.c -o CMakeFiles/GrafoLista.dir/main.c.s

# Object files for target GrafoLista
GrafoLista_OBJECTS = \
"CMakeFiles/GrafoLista.dir/main.c.o"

# External object files for target GrafoLista
GrafoLista_EXTERNAL_OBJECTS =

GrafoLista: CMakeFiles/GrafoLista.dir/main.c.o
GrafoLista: CMakeFiles/GrafoLista.dir/build.make
GrafoLista: CMakeFiles/GrafoLista.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matheus/estudoC/GrafoLista/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable GrafoLista"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GrafoLista.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GrafoLista.dir/build: GrafoLista
.PHONY : CMakeFiles/GrafoLista.dir/build

CMakeFiles/GrafoLista.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GrafoLista.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GrafoLista.dir/clean

CMakeFiles/GrafoLista.dir/depend:
	cd /home/matheus/estudoC/GrafoLista/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matheus/estudoC/GrafoLista /home/matheus/estudoC/GrafoLista /home/matheus/estudoC/GrafoLista/cmake-build-debug /home/matheus/estudoC/GrafoLista/cmake-build-debug /home/matheus/estudoC/GrafoLista/cmake-build-debug/CMakeFiles/GrafoLista.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GrafoLista.dir/depend

