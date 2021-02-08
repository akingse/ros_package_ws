# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;four_wheel_steering_msgs;hardware_interface;nav_msgs;realtime_tools;roscpp;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lfour_wheel_steering_controller".split(';') if "-lfour_wheel_steering_controller" != "" else []
PROJECT_NAME = "four_wheel_steering_controller"
PROJECT_SPACE_DIR = "/home/akingse/tempopkg_ws/install"
PROJECT_VERSION = "0.18.1"
