# CMake generated Testfile for 
# Source directory: /home/akingse/tempopkg_ws/src/ros_controllers/effort_controllers
# Build directory: /home/akingse/tempopkg_ws/build_isolated/effort_controllers
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_effort_controllers_rostest_test_effort_position_controller.test "/home/akingse/tempopkg_ws/build_isolated/effort_controllers/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/akingse/tempopkg_ws/build_isolated/effort_controllers/test_results/effort_controllers/rostest-test_effort_position_controller.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/akingse/tempopkg_ws/src/ros_controllers/effort_controllers --package=effort_controllers --results-filename test_effort_position_controller.xml --results-base-dir \"/home/akingse/tempopkg_ws/build_isolated/effort_controllers/test_results\" /home/akingse/tempopkg_ws/src/ros_controllers/effort_controllers/test/effort_position_controller.test ")
set_tests_properties(_ctest_effort_controllers_rostest_test_effort_position_controller.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/kinetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/kinetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/opt/ros/kinetic/share/rostest/cmake/rostest-extras.cmake;80;add_rostest;/opt/ros/kinetic/share/rostest/cmake/rostest-extras.cmake;100;_add_rostest_google_test;/home/akingse/tempopkg_ws/src/ros_controllers/effort_controllers/CMakeLists.txt;82;add_rostest_gtest;/home/akingse/tempopkg_ws/src/ros_controllers/effort_controllers/CMakeLists.txt;0;")
subdirs("gtest")
