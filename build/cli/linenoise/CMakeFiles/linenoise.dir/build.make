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
include cli/linenoise/CMakeFiles/linenoise.dir/depend.make

# Include the progress variables for this target.
include cli/linenoise/CMakeFiles/linenoise.dir/progress.make

# Include the compile flags for this target's objects.
include cli/linenoise/CMakeFiles/linenoise.dir/flags.make

cli/linenoise/CMakeFiles/linenoise.dir/ConvertUTF.cpp.o: cli/linenoise/CMakeFiles/linenoise.dir/flags.make
cli/linenoise/CMakeFiles/linenoise.dir/ConvertUTF.cpp.o: /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/ConvertUTF.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/d/Fabrizio/WorkSpace/C/blang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cli/linenoise/CMakeFiles/linenoise.dir/ConvertUTF.cpp.o"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linenoise.dir/ConvertUTF.cpp.o -c /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/ConvertUTF.cpp

cli/linenoise/CMakeFiles/linenoise.dir/ConvertUTF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linenoise.dir/ConvertUTF.cpp.i"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/ConvertUTF.cpp > CMakeFiles/linenoise.dir/ConvertUTF.cpp.i

cli/linenoise/CMakeFiles/linenoise.dir/ConvertUTF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linenoise.dir/ConvertUTF.cpp.s"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/ConvertUTF.cpp -o CMakeFiles/linenoise.dir/ConvertUTF.cpp.s

cli/linenoise/CMakeFiles/linenoise.dir/linenoise.cpp.o: cli/linenoise/CMakeFiles/linenoise.dir/flags.make
cli/linenoise/CMakeFiles/linenoise.dir/linenoise.cpp.o: /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/linenoise.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/d/Fabrizio/WorkSpace/C/blang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object cli/linenoise/CMakeFiles/linenoise.dir/linenoise.cpp.o"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linenoise.dir/linenoise.cpp.o -c /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/linenoise.cpp

cli/linenoise/CMakeFiles/linenoise.dir/linenoise.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linenoise.dir/linenoise.cpp.i"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/linenoise.cpp > CMakeFiles/linenoise.dir/linenoise.cpp.i

cli/linenoise/CMakeFiles/linenoise.dir/linenoise.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linenoise.dir/linenoise.cpp.s"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/linenoise.cpp -o CMakeFiles/linenoise.dir/linenoise.cpp.s

cli/linenoise/CMakeFiles/linenoise.dir/wcwidth.cpp.o: cli/linenoise/CMakeFiles/linenoise.dir/flags.make
cli/linenoise/CMakeFiles/linenoise.dir/wcwidth.cpp.o: /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/wcwidth.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/d/Fabrizio/WorkSpace/C/blang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object cli/linenoise/CMakeFiles/linenoise.dir/wcwidth.cpp.o"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linenoise.dir/wcwidth.cpp.o -c /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/wcwidth.cpp

cli/linenoise/CMakeFiles/linenoise.dir/wcwidth.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linenoise.dir/wcwidth.cpp.i"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/wcwidth.cpp > CMakeFiles/linenoise.dir/wcwidth.cpp.i

cli/linenoise/CMakeFiles/linenoise.dir/wcwidth.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linenoise.dir/wcwidth.cpp.s"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && /mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise/wcwidth.cpp -o CMakeFiles/linenoise.dir/wcwidth.cpp.s

# Object files for target linenoise
linenoise_OBJECTS = \
"CMakeFiles/linenoise.dir/ConvertUTF.cpp.o" \
"CMakeFiles/linenoise.dir/linenoise.cpp.o" \
"CMakeFiles/linenoise.dir/wcwidth.cpp.o"

# External object files for target linenoise
linenoise_EXTERNAL_OBJECTS =

lib/liblinenoise.a: cli/linenoise/CMakeFiles/linenoise.dir/ConvertUTF.cpp.o
lib/liblinenoise.a: cli/linenoise/CMakeFiles/linenoise.dir/linenoise.cpp.o
lib/liblinenoise.a: cli/linenoise/CMakeFiles/linenoise.dir/wcwidth.cpp.o
lib/liblinenoise.a: cli/linenoise/CMakeFiles/linenoise.dir/build.make
lib/liblinenoise.a: cli/linenoise/CMakeFiles/linenoise.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/d/Fabrizio/WorkSpace/C/blang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../lib/liblinenoise.a"
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && $(CMAKE_COMMAND) -P CMakeFiles/linenoise.dir/cmake_clean_target.cmake
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linenoise.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cli/linenoise/CMakeFiles/linenoise.dir/build: lib/liblinenoise.a

.PHONY : cli/linenoise/CMakeFiles/linenoise.dir/build

cli/linenoise/CMakeFiles/linenoise.dir/clean:
	cd /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise && $(CMAKE_COMMAND) -P CMakeFiles/linenoise.dir/cmake_clean.cmake
.PHONY : cli/linenoise/CMakeFiles/linenoise.dir/clean

cli/linenoise/CMakeFiles/linenoise.dir/depend:
	cd /d/Fabrizio/WorkSpace/C/blang/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /d/Fabrizio/WorkSpace/C/blang/src /d/Fabrizio/WorkSpace/C/blang/src/cli/linenoise /d/Fabrizio/WorkSpace/C/blang/build /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise /d/Fabrizio/WorkSpace/C/blang/build/cli/linenoise/CMakeFiles/linenoise.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cli/linenoise/CMakeFiles/linenoise.dir/depend

