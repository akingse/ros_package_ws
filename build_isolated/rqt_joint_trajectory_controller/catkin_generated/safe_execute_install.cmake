execute_process(COMMAND "/home/akingse/tempopkg_ws/build_isolated/rqt_joint_trajectory_controller/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/akingse/tempopkg_ws/build_isolated/rqt_joint_trajectory_controller/catkin_generated/python_distutils_install.sh) returned error code ")
endif()