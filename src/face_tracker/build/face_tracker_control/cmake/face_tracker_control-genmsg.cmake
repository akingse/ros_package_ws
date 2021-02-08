# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "face_tracker_control: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iface_tracker_control:/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(face_tracker_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg" NAME_WE)
add_custom_target(_face_tracker_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_tracker_control" "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(face_tracker_control
  "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_tracker_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(face_tracker_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_tracker_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(face_tracker_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(face_tracker_control_generate_messages face_tracker_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg" NAME_WE)
add_dependencies(face_tracker_control_generate_messages_cpp _face_tracker_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_tracker_control_gencpp)
add_dependencies(face_tracker_control_gencpp face_tracker_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_tracker_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(face_tracker_control
  "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_tracker_control
)

### Generating Services

### Generating Module File
_generate_module_eus(face_tracker_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_tracker_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(face_tracker_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(face_tracker_control_generate_messages face_tracker_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg" NAME_WE)
add_dependencies(face_tracker_control_generate_messages_eus _face_tracker_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_tracker_control_geneus)
add_dependencies(face_tracker_control_geneus face_tracker_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_tracker_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(face_tracker_control
  "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_tracker_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(face_tracker_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_tracker_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(face_tracker_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(face_tracker_control_generate_messages face_tracker_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg" NAME_WE)
add_dependencies(face_tracker_control_generate_messages_lisp _face_tracker_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_tracker_control_genlisp)
add_dependencies(face_tracker_control_genlisp face_tracker_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_tracker_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(face_tracker_control
  "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_tracker_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(face_tracker_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_tracker_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(face_tracker_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(face_tracker_control_generate_messages face_tracker_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg" NAME_WE)
add_dependencies(face_tracker_control_generate_messages_nodejs _face_tracker_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_tracker_control_gennodejs)
add_dependencies(face_tracker_control_gennodejs face_tracker_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_tracker_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(face_tracker_control
  "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_tracker_control
)

### Generating Services

### Generating Module File
_generate_module_py(face_tracker_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_tracker_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(face_tracker_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(face_tracker_control_generate_messages face_tracker_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/ros_demo/ros_demo_2/src/face_tracker_control/msg/centroid.msg" NAME_WE)
add_dependencies(face_tracker_control_generate_messages_py _face_tracker_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_tracker_control_genpy)
add_dependencies(face_tracker_control_genpy face_tracker_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_tracker_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_tracker_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_tracker_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(face_tracker_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_tracker_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_tracker_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(face_tracker_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_tracker_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_tracker_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(face_tracker_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_tracker_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_tracker_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(face_tracker_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_tracker_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_tracker_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_tracker_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(face_tracker_control_generate_messages_py std_msgs_generate_messages_py)
endif()
