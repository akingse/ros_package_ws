# Install script for directory: /home/akingse/tempopkg_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/akingse/tempopkg_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akingse/tempopkg_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/akingse/tempopkg_ws/install" TYPE PROGRAM FILES "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akingse/tempopkg_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/akingse/tempopkg_ws/install" TYPE PROGRAM FILES "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akingse/tempopkg_ws/install/setup.bash;/home/akingse/tempopkg_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/akingse/tempopkg_ws/install" TYPE FILE FILES
    "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/setup.bash"
    "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akingse/tempopkg_ws/install/setup.sh;/home/akingse/tempopkg_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/akingse/tempopkg_ws/install" TYPE FILE FILES
    "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/setup.sh"
    "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akingse/tempopkg_ws/install/setup.zsh;/home/akingse/tempopkg_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/akingse/tempopkg_ws/install" TYPE FILE FILES
    "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akingse/tempopkg_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/akingse/tempopkg_ws/install" TYPE FILE FILES "/home/akingse/tempopkg_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/akingse/tempopkg_ws/build/gtest/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/ros_controllers/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/rqt_joint_trajectory_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/rrbot/rrbot_control/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/rrbot/rrbot_description/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/rrbot/rrbot_gazebo/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/velodyne/velodyne/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/velodyne/velodyne_msgs/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/mbot/mbot_teleop/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/force_torque_sensor_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/forward_command_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/position_controllers/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/imu_sensor_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/joint_state_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/joytwist/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/rrbot/gazebo_tutorials/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/marm/marm_planning/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/gripper_action_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/marm/marm_gazebo/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/mbot/mbot_gazebo/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/velocity_controllers/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/velodyne/velodyne_driver/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/velodyne/velodyne_laserscan/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/velodyne/velodyne_pcl/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/velodyne/velodyne_pointcloud/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/diff_drive_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/ackermann_steering_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/effort_controllers/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/joint_trajectory_controller/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/marm/marm_description/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/marm/marm_moveit_config/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/mbot/mbot_description/cmake_install.cmake")
  include("/home/akingse/tempopkg_ws/build/ros_controllers/four_wheel_steering_controller/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/akingse/tempopkg_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
