#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/akingse/tempopkg_ws/src/ros_control/controller_manager_msgs"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/akingse/tempopkg_ws/install_isolated/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/akingse/tempopkg_ws/install_isolated/lib/python2.7/dist-packages:/home/akingse/tempopkg_ws/build_isolated/controller_manager_msgs/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/akingse/tempopkg_ws/build_isolated/controller_manager_msgs" \
    "/usr/bin/python2" \
    "/home/akingse/tempopkg_ws/src/ros_control/controller_manager_msgs/setup.py" \
    egg_info --egg-base /home/akingse/tempopkg_ws/build_isolated/controller_manager_msgs \
    build --build-base "/home/akingse/tempopkg_ws/build_isolated/controller_manager_msgs" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/akingse/tempopkg_ws/install_isolated" --install-scripts="/home/akingse/tempopkg_ws/install_isolated/bin"
