# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sushrut/Desktop/grabber/Kinect2Grabber

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sushrut/Desktop/grabber/Kinect2Grabber/build

# Include any dependencies generated for this target.
include CMakeFiles/kinectgrabber.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kinectgrabber.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kinectgrabber.dir/flags.make

CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o: CMakeFiles/kinectgrabber.dir/flags.make
CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o: ../src/Kinect2Grabber.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sushrut/Desktop/grabber/Kinect2Grabber/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o -c /home/sushrut/Desktop/grabber/Kinect2Grabber/src/Kinect2Grabber.cpp

CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sushrut/Desktop/grabber/Kinect2Grabber/src/Kinect2Grabber.cpp > CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.i

CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sushrut/Desktop/grabber/Kinect2Grabber/src/Kinect2Grabber.cpp -o CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.s

CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.requires:
.PHONY : CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.requires

CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.provides: CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.requires
	$(MAKE) -f CMakeFiles/kinectgrabber.dir/build.make CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.provides.build
.PHONY : CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.provides

CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.provides.build: CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o

# Object files for target kinectgrabber
kinectgrabber_OBJECTS = \
"CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o"

# External object files for target kinectgrabber
kinectgrabber_EXTERNAL_OBJECTS =

libkinectgrabber.so: CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o
libkinectgrabber.so: CMakeFiles/kinectgrabber.dir/build.make
libkinectgrabber.so: /usr/local/lib/libfreenect2.so
libkinectgrabber.so: CMakeFiles/kinectgrabber.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libkinectgrabber.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kinectgrabber.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kinectgrabber.dir/build: libkinectgrabber.so
.PHONY : CMakeFiles/kinectgrabber.dir/build

CMakeFiles/kinectgrabber.dir/requires: CMakeFiles/kinectgrabber.dir/src/Kinect2Grabber.cpp.o.requires
.PHONY : CMakeFiles/kinectgrabber.dir/requires

CMakeFiles/kinectgrabber.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kinectgrabber.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kinectgrabber.dir/clean

CMakeFiles/kinectgrabber.dir/depend:
	cd /home/sushrut/Desktop/grabber/Kinect2Grabber/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sushrut/Desktop/grabber/Kinect2Grabber /home/sushrut/Desktop/grabber/Kinect2Grabber /home/sushrut/Desktop/grabber/Kinect2Grabber/build /home/sushrut/Desktop/grabber/Kinect2Grabber/build /home/sushrut/Desktop/grabber/Kinect2Grabber/build/CMakeFiles/kinectgrabber.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kinectgrabber.dir/depend
