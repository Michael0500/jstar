# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /d/Fabrizio/WorkSpace/C/blang/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /d/Fabrizio/WorkSpace/C/blang/build

# Include any dependencies generated for this target.
include cli/CMakeFiles/blang.dir/depend.make

# Include the progress variables for this target.
include cli/CMakeFiles/blang.dir/progress.make

# Include the compile flags for this target's objects.
include cli/CMakeFiles/blang.dir/flags.make

cli/CMakeFiles/blang.dir/cli.c.o: cli/CMakeFiles/blang.dir/flags.make
cli/CMakeFiles/blang.dir/cli.c.o: /d/Fabrizio/WorkSpace/C/blang/src/cli/cli.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/d/Fabrizio/WorkSpace/C/blang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object cli/CMakeFiles/blang.dir/cli.c.o"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli && /mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/blang.dir/cli.c.o   -c /d/Fabrizio/WorkSpace/C/blang/src/cli/cli.c

cli/CMakeFiles/blang.dir/cli.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/blang.dir/cli.c.i"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli && /mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /d/Fabrizio/WorkSpace/C/blang/src/cli/cli.c > CMakeFiles/blang.dir/cli.c.i

cli/CMakeFiles/blang.dir/cli.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/blang.dir/cli.c.s"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli && /mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /d/Fabrizio/WorkSpace/C/blang/src/cli/cli.c -o CMakeFiles/blang.dir/cli.c.s

# Object files for target blang
blang_OBJECTS = \
"CMakeFiles/blang.dir/cli.c.o"

# External object files for target blang
blang_EXTERNAL_OBJECTS =

bin/blang.exe: cli/CMakeFiles/blang.dir/cli.c.o
bin/blang.exe: cli/CMakeFiles/blang.dir/build.make
bin/blang.exe: lib/libblang.a
bin/blang.exe: lib/liblinenoise.a
bin/blang.exe: cli/CMakeFiles/blang.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/d/Fabrizio/WorkSpace/C/blang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/blang.exe"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blang.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cli/CMakeFiles/blang.dir/build: bin/blang.exe

.PHONY : cli/CMakeFiles/blang.dir/build

cli/CMakeFiles/blang.dir/clean:
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli && $(CMAKE_COMMAND) -P CMakeFiles/blang.dir/cmake_clean.cmake
.PHONY : cli/CMakeFiles/blang.dir/clean

cli/CMakeFiles/blang.dir/depend:
	cd /d/Fabrizio/WorkSpace/C/blang/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /d/Fabrizio/WorkSpace/C/blang/src /d/Fabrizio/WorkSpace/C/blang/src/cli /d/Fabrizio/WorkSpace/C/blang/build /d/Fabrizio/WorkSpace/C/blang/build/cli /d/Fabrizio/WorkSpace/C/blang/build/cli/CMakeFiles/blang.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cli/CMakeFiles/blang.dir/depend

