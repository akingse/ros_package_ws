# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;hardware_interface;realtime_tools;roscpp;sensor_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ljoint_state_controller".split(';') if "-ljoint_state_controller" != "" else []
PROJECT_NAME = "joint_state_controller"
PROJECT_SPACE_DIR = "/home/akingse/tempopkg_ws/install"
PROJECT_VERSION = "0.18.1"
