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
CMAKE_SOURCE_DIR = /home/matheus/estudoC/VerificacaoGrafoList

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matheus/estudoC/VerificacaoGrafoList/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/VerificacaoGrafoList.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VerificacaoGrafoList.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VerificacaoGrafoList.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VerificacaoGrafoList.dir/flags.make

CMakeFiles/VerificacaoGrafoList.dir/main.c.o: CMakeFiles/VerificacaoGrafoList.dir/flags.make
CMakeFiles/VerificacaoGrafoList.dir/main.c.o: /home/matheus/estudoC/VerificacaoGrafoList/main.c
CMakeFiles/VerificacaoGrafoList.dir/main.c.o: CMakeFiles/VerificacaoGrafoList.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matheus/estudoC/VerificacaoGrafoList/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/VerificacaoGrafoList.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/VerificacaoGrafoList.dir/main.c.o -MF CMakeFiles/VerificacaoGrafoList.dir/main.c.o.d -o CMakeFiles/VerificacaoGrafoList.dir/main.c.o -c /home/matheus/estudoC/VerificacaoGrafoList/main.c

CMakeFiles/VerificacaoGrafoList.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/VerificacaoGrafoList.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/matheus/estudoC/VerificacaoGrafoList/main.c > CMakeFiles/VerificacaoGrafoList.dir/main.c.i

CMakeFiles/VerificacaoGrafoList.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/VerificacaoGrafoList.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/matheus/estudoC/VerificacaoGrafoList/main.c -o CMakeFiles/VerificacaoGrafoList.dir/main.c.s

# Object files for target VerificacaoGrafoList
VerificacaoGrafoList_OBJECTS = \
"CMakeFiles/VerificacaoGrafoList.dir/main.c.o"

# External object files for target VerificacaoGrafoList
VerificacaoGrafoList_EXTERNAL_OBJECTS =

VerificacaoGrafoList: CMakeFiles/VerificacaoGrafoList.dir/main.c.o
VerificacaoGrafoList: CMakeFiles/VerificacaoGrafoList.dir/build.make
VerificacaoGrafoList: CMakeFiles/VerificacaoGrafoList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matheus/estudoC/VerificacaoGrafoList/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable VerificacaoGrafoList"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VerificacaoGrafoList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VerificacaoGrafoList.dir/build: VerificacaoGrafoList
.PHONY : CMakeFiles/VerificacaoGrafoList.dir/build

CMakeFiles/VerificacaoGrafoList.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VerificacaoGrafoList.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VerificacaoGrafoList.dir/clean

CMakeFiles/VerificacaoGrafoList.dir/depend:
	cd /home/matheus/estudoC/VerificacaoGrafoList/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matheus/estudoC/VerificacaoGrafoList /home/matheus/estudoC/VerificacaoGrafoList /home/matheus/estudoC/VerificacaoGrafoList/cmake-build-debug /home/matheus/estudoC/VerificacaoGrafoList/cmake-build-debug /home/matheus/estudoC/VerificacaoGrafoList/cmake-build-debug/CMakeFiles/VerificacaoGrafoList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VerificacaoGrafoList.dir/depend
