# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;angles;control_msgs;control_toolbox;controller_interface;hardware_interface;realtime_tools;roscpp;trajectory_msgs;urdf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ljoint_trajectory_controller".split(';') if "-ljoint_trajectory_controller" != "" else []
PROJECT_NAME = "joint_trajectory_controller"
PROJECT_SPACE_DIR = "/home/akingse/tempopkg_ws/install_isolated"
PROJECT_VERSION = "0.18.1"
