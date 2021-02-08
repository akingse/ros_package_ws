# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(velocity_controllers_CONFIG_INCLUDED)
  return()
endif()
set(velocity_controllers_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(velocity_controllers_SOURCE_PREFIX /home/akingse/tempopkg_ws/src/ros_controllers/velocity_controllers)
  set(velocity_controllers_DEVEL_PREFIX /home/akingse/tempopkg_ws/devel_isolated/velocity_controllers)
  set(velocity_controllers_INSTALL_PREFIX "")
  set(velocity_controllers_PREFIX ${velocity_controllers_DEVEL_PREFIX})
else()
  set(velocity_controllers_SOURCE_PREFIX "")
  set(velocity_controllers_DEVEL_PREFIX "")
  set(velocity_controllers_INSTALL_PREFIX /home/akingse/tempopkg_ws/install_isolated)
  set(velocity_controllers_PREFIX ${velocity_controllers_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'velocity_controllers' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(velocity_controllers_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/akingse/tempopkg_ws/src/ros_controllers/velocity_controllers/include " STREQUAL " ")
  set(velocity_controllers_INCLUDE_DIRS "")
  set(_include_dirs "/home/akingse/tempopkg_ws/src/ros_controllers/velocity_controllers/include")
  if(NOT "https://github.com/ros-controls/ros_controllers/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://github.com/ros-controls/ros_controllers/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "https://github.com/ros-controls/ros_controllers/wiki " STREQUAL " ")
    set(_report "Check the website 'https://github.com/ros-controls/ros_controllers/wiki' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Bence Magyar <bence.magyar.robotics@gmail.com>, Mathias Lüdtke <mathias.luedtke@ipa.fraunhofer.de>, Enrique Fernandez <enrique.fernandez.perdomo@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${velocity_controllers_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'velocity_controllers' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'velocity_controllers' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/akingse/tempopkg_ws/src/ros_controllers/velocity_controllers/${idir}'.  ${_report}")
    endif()
    _list_append_unique(velocity_controllers_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "velocity_controllers")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND velocity_controllers_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND velocity_controllers_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT velocity_controllers_NUM_DUMMY_TARGETS)
      set(velocity_controllers_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::velocity_controllers::wrapped-linker-option${velocity_controllers_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR velocity_controllers_NUM_DUMMY_TARGETS "${velocity_controllers_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::velocity_controllers::wrapped-linker-option${velocity_controllers_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND velocity_controllers_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND velocity_controllers_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND velocity_controllers_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/akingse/tempopkg_ws/devel_isolated/velocity_controllers/lib;/home/akingse/tempopkg_ws/devel_isolated/transmission_interface/lib;/home/akingse/tempopkg_ws/devel_isolated/rrbot_gazebo/lib;/home/akingse/tempopkg_ws/devel_isolated/rrbot_description/lib;/home/akingse/tempopkg_ws/devel_isolated/rrbot_control/lib;/home/akingse/tempopkg_ws/devel_isolated/rqt_joint_trajectory_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/rqt_controller_manager/lib;/home/akingse/tempopkg_ws/devel_isolated/ros_controllers/lib;/home/akingse/tempopkg_ws/devel_isolated/ros_control/lib;/home/akingse/tempopkg_ws/devel_isolated/position_controllers/lib;/home/akingse/tempopkg_ws/devel_isolated/mbot_teleop/lib;/home/akingse/tempopkg_ws/devel_isolated/mbot_gazebo/lib;/home/akingse/tempopkg_ws/devel_isolated/mbot_description/lib;/home/akingse/tempopkg_ws/devel_isolated/joint_trajectory_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/effort_controllers/lib;/home/akingse/tempopkg_ws/devel_isolated/joint_state_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/joint_limits_interface/lib;/home/akingse/tempopkg_ws/devel_isolated/imu_sensor_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/gripper_action_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/four_wheel_steering_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/forward_command_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/force_torque_sensor_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/ackermann_steering_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/diff_drive_controller/lib;/home/akingse/tempopkg_ws/devel_isolated/combined_robot_hw_tests/lib;/home/akingse/tempopkg_ws/devel_isolated/controller_manager_tests/lib;/home/akingse/tempopkg_ws/devel_isolated/controller_manager/lib;/home/akingse/tempopkg_ws/devel_isolated/controller_interface/lib;/home/akingse/tempopkg_ws/devel_isolated/combined_robot_hw/lib;/home/akingse/tempopkg_ws/devel_isolated/hardware_interface/lib;/home/akingse/tempopkg_ws/devel_isolated/gazebo_tutorials/lib;/home/akingse/tempopkg_ws/devel_isolated/controller_manager_msgs/lib;/home/akingse/tempopkg_ws/devel/lib;/home/akingse/catkin_ws/devel/lib;/home/akingse/tutorial_ws/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(velocity_controllers_LIBRARY_DIRS ${lib_path})
      list(APPEND velocity_controllers_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'velocity_controllers'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND velocity_controllers_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(velocity_controllers_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${velocity_controllers_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "control_msgs;control_toolbox;controller_interface;forward_command_controller;hardware_interface;realtime_tools;std_msgs;urdf")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 velocity_controllers_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${velocity_controllers_dep}_FOUND)
      find_package(${velocity_controllers_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${velocity_controllers_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(velocity_controllers_INCLUDE_DIRS ${${velocity_controllers_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(velocity_controllers_LIBRARIES ${velocity_controllers_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${velocity_controllers_dep}_LIBRARIES})
  _list_append_deduplicate(velocity_controllers_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(velocity_controllers_LIBRARIES ${velocity_controllers_LIBRARIES})

  _list_append_unique(velocity_controllers_LIBRARY_DIRS ${${velocity_controllers_dep}_LIBRARY_DIRS})
  list(APPEND velocity_controllers_EXPORTED_TARGETS ${${velocity_controllers_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${velocity_controllers_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
