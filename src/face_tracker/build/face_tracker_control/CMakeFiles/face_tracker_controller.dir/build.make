# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/akingse/ros_demo/ros_demo_2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/akingse/ros_demo/ros_demo_2/build

# Include any dependencies generated for this target.
include face_tracker_control/CMakeFiles/face_tracker_controller.dir/depend.make

# Include the progress variables for this target.
include face_tracker_control/CMakeFiles/face_tracker_controller.dir/progress.make

# Include the compile flags for this target's objects.
include face_tracker_control/CMakeFiles/face_tracker_controller.dir/flags.make

face_tracker_control/CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.o: face_tracker_control/CMakeFiles/face_tracker_controller.dir/flags.make
face_tracker_control/CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.o: /home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/src/face_tracker_controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/akingse/ros_demo/ros_demo_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object face_tracker_control/CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.o"
	cd /home/akingse/ros_demo/ros_demo_2/build/face_tracker_control && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.o -c /home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/src/face_tracker_controller.cpp

face_tracker_control/CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.i"
	cd /home/akingse/ros_demo/ros_demo_2/build/face_tracker_control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/src/face_tracker_controller.cpp > CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.i

face_tracker_control/CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.s"
	cd /home/akingse/ros_demo/ros_demo_2/build/face_tracker_control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/src/face_tracker_controller.cpp -o CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.s

# Object files for target face_tracker_controller
face_tracker_controller_OBJECTS = \
"CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.o"

# External object files for target face_tracker_controller
face_tracker_controller_EXTERNAL_OBJECTS =

/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: face_tracker_control/CMakeFiles/face_tracker_controller.dir/src/face_tracker_controller.cpp.o
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: face_tracker_control/CMakeFiles/face_tracker_controller.dir/build.make
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/libroscpp.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/librosconsole.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/librostime.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /opt/ros/kinetic/lib/libcpp_common.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller: face_tracker_control/CMakeFiles/face_tracker_controller.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/akingse/ros_demo/ros_demo_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller"
	cd /home/akingse/ros_demo/ros_demo_2/build/face_tracker_control && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/face_tracker_controller.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
face_tracker_control/CMakeFiles/face_tracker_controller.dir/build: /home/akingse/ros_demo/ros_demo_2/devel/lib/face_tracker_control/face_tracker_controller

.PHONY : face_tracker_control/CMakeFiles/face_tracker_controller.dir/build

face_tracker_control/CMakeFiles/face_tracker_controller.dir/clean:
	cd /home/akingse/ros_demo/ros_demo_2/build/face_tracker_control && $(CMAKE_COMMAND) -P CMakeFiles/face_tracker_controller.dir/cmake_clean.cmake
.PHONY : face_tracker_control/CMakeFiles/face_tracker_controller.dir/clean

face_tracker_control/CMakeFiles/face_tracker_controller.dir/depend:
	cd /home/akingse/ros_demo/ros_demo_2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/akingse/ros_demo/ros_demo_2/src /home/akingse/ros_demo/ros_demo_2/src/face_tracker_control /home/akingse/ros_demo/ros_demo_2/build /home/akingse/ros_demo/ros_demo_2/build/face_tracker_control /home/akingse/ros_demo/ros_demo_2/build/face_tracker_control/CMakeFiles/face_tracker_controller.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : face_tracker_control/CMakeFiles/face_tracker_controller.dir/depend

