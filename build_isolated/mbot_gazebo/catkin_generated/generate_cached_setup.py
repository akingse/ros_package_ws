# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/kinetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/kinetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/akingse/tempopkg_ws/devel_isolated/mbot_description;/home/akingse/tempopkg_ws/devel_isolated/joint_trajectory_controller;/home/akingse/tempopkg_ws/devel_isolated/effort_controllers;/home/akingse/tempopkg_ws/devel_isolated/joint_state_controller;/home/akingse/tempopkg_ws/devel_isolated/joint_limits_interface;/home/akingse/tempopkg_ws/devel_isolated/imu_sensor_controller;/home/akingse/tempopkg_ws/devel_isolated/gripper_action_controller;/home/akingse/tempopkg_ws/devel_isolated/four_wheel_steering_controller;/home/akingse/tempopkg_ws/devel_isolated/forward_command_controller;/home/akingse/tempopkg_ws/devel_isolated/force_torque_sensor_controller;/home/akingse/tempopkg_ws/devel_isolated/ackermann_steering_controller;/home/akingse/tempopkg_ws/devel_isolated/diff_drive_controller;/home/akingse/tempopkg_ws/devel_isolated/combined_robot_hw_tests;/home/akingse/tempopkg_ws/devel_isolated/controller_manager_tests;/home/akingse/tempopkg_ws/devel_isolated/controller_manager;/home/akingse/tempopkg_ws/devel_isolated/controller_interface;/home/akingse/tempopkg_ws/devel_isolated/combined_robot_hw;/home/akingse/tempopkg_ws/devel_isolated/hardware_interface;/home/akingse/tempopkg_ws/devel_isolated/gazebo_tutorials;/home/akingse/tempopkg_ws/devel_isolated/controller_manager_msgs;/home/akingse/tempopkg_ws/devel;/home/akingse/catkin_ws/devel;/home/akingse/tutorial_ws/devel;/opt/ros/kinetic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/akingse/tempopkg_ws/devel_isolated/mbot_gazebo/env.sh')

output_filename = '/home/akingse/tempopkg_ws/build_isolated/mbot_gazebo/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
