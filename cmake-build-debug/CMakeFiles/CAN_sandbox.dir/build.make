# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/gergo/Programs/CLion/clion-2018.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/gergo/Programs/CLion/clion-2018.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gergo/Documents/workspace_cpp/CAN_sandbox

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CAN_sandbox.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CAN_sandbox.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CAN_sandbox.dir/flags.make

CMakeFiles/CAN_sandbox.dir/main.cpp.o: CMakeFiles/CAN_sandbox.dir/flags.make
CMakeFiles/CAN_sandbox.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CAN_sandbox.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CAN_sandbox.dir/main.cpp.o -c /home/gergo/Documents/workspace_cpp/CAN_sandbox/main.cpp

CMakeFiles/CAN_sandbox.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CAN_sandbox.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gergo/Documents/workspace_cpp/CAN_sandbox/main.cpp > CMakeFiles/CAN_sandbox.dir/main.cpp.i

CMakeFiles/CAN_sandbox.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CAN_sandbox.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gergo/Documents/workspace_cpp/CAN_sandbox/main.cpp -o CMakeFiles/CAN_sandbox.dir/main.cpp.s

CMakeFiles/CAN_sandbox.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/CAN_sandbox.dir/main.cpp.o.requires

CMakeFiles/CAN_sandbox.dir/main.cpp.o.provides: CMakeFiles/CAN_sandbox.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CAN_sandbox.dir/build.make CMakeFiles/CAN_sandbox.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/CAN_sandbox.dir/main.cpp.o.provides

CMakeFiles/CAN_sandbox.dir/main.cpp.o.provides.build: CMakeFiles/CAN_sandbox.dir/main.cpp.o


CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o: CMakeFiles/CAN_sandbox.dir/flags.make
CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o: ../src/jetson_can_interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o -c /home/gergo/Documents/workspace_cpp/CAN_sandbox/src/jetson_can_interface.cpp

CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gergo/Documents/workspace_cpp/CAN_sandbox/src/jetson_can_interface.cpp > CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.i

CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gergo/Documents/workspace_cpp/CAN_sandbox/src/jetson_can_interface.cpp -o CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.s

CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.requires:

.PHONY : CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.requires

CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.provides: CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.requires
	$(MAKE) -f CMakeFiles/CAN_sandbox.dir/build.make CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.provides.build
.PHONY : CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.provides

CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.provides.build: CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o


# Object files for target CAN_sandbox
CAN_sandbox_OBJECTS = \
"CMakeFiles/CAN_sandbox.dir/main.cpp.o" \
"CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o"

# External object files for target CAN_sandbox
CAN_sandbox_EXTERNAL_OBJECTS =

CAN_sandbox: CMakeFiles/CAN_sandbox.dir/main.cpp.o
CAN_sandbox: CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o
CAN_sandbox: CMakeFiles/CAN_sandbox.dir/build.make
CAN_sandbox: CMakeFiles/CAN_sandbox.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CAN_sandbox"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CAN_sandbox.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CAN_sandbox.dir/build: CAN_sandbox

.PHONY : CMakeFiles/CAN_sandbox.dir/build

CMakeFiles/CAN_sandbox.dir/requires: CMakeFiles/CAN_sandbox.dir/main.cpp.o.requires
CMakeFiles/CAN_sandbox.dir/requires: CMakeFiles/CAN_sandbox.dir/src/jetson_can_interface.cpp.o.requires

.PHONY : CMakeFiles/CAN_sandbox.dir/requires

CMakeFiles/CAN_sandbox.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CAN_sandbox.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CAN_sandbox.dir/clean

CMakeFiles/CAN_sandbox.dir/depend:
	cd /home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gergo/Documents/workspace_cpp/CAN_sandbox /home/gergo/Documents/workspace_cpp/CAN_sandbox /home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug /home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug /home/gergo/Documents/workspace_cpp/CAN_sandbox/cmake-build-debug/CMakeFiles/CAN_sandbox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CAN_sandbox.dir/depend

