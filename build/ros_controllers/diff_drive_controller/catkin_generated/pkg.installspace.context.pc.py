# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;control_msgs;dynamic_reconfigure;geometry_msgs;hardware_interface;nav_msgs;realtime_tools;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ldiff_drive_controller".split(';') if "-ldiff_drive_controller" != "" else []
PROJECT_NAME = "diff_drive_controller"
PROJECT_SPACE_DIR = "/home/akingse/tempopkg_ws/install"
PROJECT_VERSION = "0.18.1"
