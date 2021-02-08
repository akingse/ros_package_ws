#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
 
def callback(data):
	twist = Twist()
	twist.angular.z = data.axes[0]
	twist.linear.x = data.axes[1]

        #print('speed: %.2f, turn: %.2f'%(twist.linear.x,twist.angular.z))
        if data.buttons[2]==1:
             twist.linear.x = 0
             twist.angular.z = 0
             print("STOP!!")
	pub.publish(twist)
 
# Intializes everything
def start():
	# publishing to "cmd_vel" to control turtle1
	global pub
	pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
	# subscribed to joystick inputs on topic "joy"
	rospy.Subscriber("joy", Joy, callback)
	# starts the node
	rospy.init_node('joytwist')
	rospy.spin()
 
if __name__ == '__main__':
	start()
