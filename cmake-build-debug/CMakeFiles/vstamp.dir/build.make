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
CMAKE_COMMAND = "/Users/raynor106/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.4886.39/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/raynor106/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.4886.39/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/raynor106/par/ext/vstamp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/raynor106/par/ext/vstamp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/vstamp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vstamp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vstamp.dir/flags.make

CMakeFiles/vstamp.dir/main.cpp.o: CMakeFiles/vstamp.dir/flags.make
CMakeFiles/vstamp.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/raynor106/par/ext/vstamp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vstamp.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vstamp.dir/main.cpp.o -c /Users/raynor106/par/ext/vstamp/main.cpp

CMakeFiles/vstamp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vstamp.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/raynor106/par/ext/vstamp/main.cpp > CMakeFiles/vstamp.dir/main.cpp.i

CMakeFiles/vstamp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vstamp.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/raynor106/par/ext/vstamp/main.cpp -o CMakeFiles/vstamp.dir/main.cpp.s

# Object files for target vstamp
vstamp_OBJECTS = \
"CMakeFiles/vstamp.dir/main.cpp.o"

# External object files for target vstamp
vstamp_EXTERNAL_OBJECTS =

vstamp: CMakeFiles/vstamp.dir/main.cpp.o
vstamp: CMakeFiles/vstamp.dir/build.make
vstamp: CMakeFiles/vstamp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/raynor106/par/ext/vstamp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vstamp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vstamp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vstamp.dir/build: vstamp

.PHONY : CMakeFiles/vstamp.dir/build

CMakeFiles/vstamp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vstamp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vstamp.dir/clean

CMakeFiles/vstamp.dir/depend:
	cd /Users/raynor106/par/ext/vstamp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/raynor106/par/ext/vstamp /Users/raynor106/par/ext/vstamp /Users/raynor106/par/ext/vstamp/cmake-build-debug /Users/raynor106/par/ext/vstamp/cmake-build-debug /Users/raynor106/par/ext/vstamp/cmake-build-debug/CMakeFiles/vstamp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vstamp.dir/depend
