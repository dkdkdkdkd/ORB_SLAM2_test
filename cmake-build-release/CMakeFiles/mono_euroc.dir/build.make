# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /snap/clion/248/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /snap/clion/248/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jiho/slam/ORB_SLAM2_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jiho/slam/ORB_SLAM2_test/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/mono_euroc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mono_euroc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mono_euroc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mono_euroc.dir/flags.make

CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o: CMakeFiles/mono_euroc.dir/flags.make
CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o: /home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc.cc
CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o: CMakeFiles/mono_euroc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiho/slam/ORB_SLAM2_test/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o -MF CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o.d -o CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o -c /home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc.cc

CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc.cc > CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.i

CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc.cc -o CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.s

# Object files for target mono_euroc
mono_euroc_OBJECTS = \
"CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o"

# External object files for target mono_euroc
mono_euroc_EXTERNAL_OBJECTS =

/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: CMakeFiles/mono_euroc.dir/Examples/Monocular/mono_euroc.cc.o
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: CMakeFiles/mono_euroc.dir/build.make
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /home/jiho/slam/ORB_SLAM2_test/lib/libORB_SLAM2.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_dnn.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_ml.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_objdetect.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_shape.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_stitching.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_superres.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_videostab.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_calib3d.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_features2d.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_flann.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_highgui.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_photo.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_video.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_videoio.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_imgcodecs.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_imgproc.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libopencv_core.so.3.4.5
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_glgeometry.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_geometry.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_plot.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_python.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_scene.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_tools.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_display.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_vars.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_video.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_packetstream.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_windowing.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_opengl.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_image.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libpango_core.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/lib/x86_64-linux-gnu/libGLEW.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/lib/x86_64-linux-gnu/libOpenGL.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/lib/x86_64-linux-gnu/libGLX.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/lib/x86_64-linux-gnu/libGLU.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libtinyobj.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /home/jiho/slam/ORB_SLAM2_test/Thirdparty/DBoW2/lib/libDBoW2.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /home/jiho/slam/ORB_SLAM2_test/Thirdparty/g2o/lib/libg2o.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: /usr/local/lib/libboost_serialization.so
/home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc: CMakeFiles/mono_euroc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jiho/slam/ORB_SLAM2_test/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mono_euroc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mono_euroc.dir/build: /home/jiho/slam/ORB_SLAM2_test/Examples/Monocular/mono_euroc
.PHONY : CMakeFiles/mono_euroc.dir/build

CMakeFiles/mono_euroc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mono_euroc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mono_euroc.dir/clean

CMakeFiles/mono_euroc.dir/depend:
	cd /home/jiho/slam/ORB_SLAM2_test/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jiho/slam/ORB_SLAM2_test /home/jiho/slam/ORB_SLAM2_test /home/jiho/slam/ORB_SLAM2_test/cmake-build-release /home/jiho/slam/ORB_SLAM2_test/cmake-build-release /home/jiho/slam/ORB_SLAM2_test/cmake-build-release/CMakeFiles/mono_euroc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mono_euroc.dir/depend

