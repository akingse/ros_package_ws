# CMake generated Testfile for 
# Source directory: /home/akingse/tempopkg_ws/src/velodyne/velodyne_pcl
# Build directory: /home/akingse/tempopkg_ws/build_isolated/velodyne_pcl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_velodyne_pcl_roslint_package "/home/akingse/tempopkg_ws/build_isolated/velodyne_pcl/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/akingse/tempopkg_ws/build_isolated/velodyne_pcl/test_results/velodyne_pcl/roslint-velodyne_pcl.xml" "--working-dir" "/home/akingse/tempopkg_ws/build_isolated/velodyne_pcl" "--return-code" "/opt/ros/kinetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/akingse/tempopkg_ws/build_isolated/velodyne_pcl/test_results/velodyne_pcl/roslint-velodyne_pcl.xml make roslint_velodyne_pcl")
set_tests_properties(_ctest_velodyne_pcl_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/kinetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/kinetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/akingse/tempopkg_ws/src/velodyne/velodyne_pcl/CMakeLists.txt;9;roslint_add_test;/home/akingse/tempopkg_ws/src/velodyne/velodyne_pcl/CMakeLists.txt;0;")
subdirs("gtest")
