/*
Coded by luke on 5th July 2017
Aiming to transfer the quaternion into raw pitch yaw.
*/

#include "ros/ros.h"
#include "geometry_msgs/Vector3.h"
#include "geometry_msgs/Quaternion.h"
#include "tf/transform_datatypes.h"
#include "nav_msgs/Odometry.h"
#include "sensor_msgs/Imu.h"

// Define the subscriber and publisher for this node
ros::Publisher rpy_publisher;
ros::Subscriber quaternion_subscriber;

// The callback function for the quaternion 
void Quaternion_CallBack(const sensor_msgs::Imu::ConstPtr msg)
{
	// transfered the incoming geometry_msgs::Quternion into the tf::Quaternion
	tf::Quaternion quat;
	geometry_msgs::Quaternion quat1 = msg->orientation;
	tf::quaternionMsgToTF(quat1,quat);

	// the tf::Quaternion has a method to get the yaw pitch and roll
	double roll,pitch,yaw;
	tf::Matrix3x3(quat).getRPY(roll,pitch,yaw);

	// The found angles are written in a geometry_msgs::Vector3
	geometry_msgs::Vector3 rpy;
	rpy.x = roll;
	rpy.y = pitch;
	rpy.z = yaw;

	// this Vector is then published
	rpy_publisher.publish(rpy);
	ROS_INFO("Published rpy angles: roll=%f picth=%f yaw=%f",rpy.x,rpy.y,rpy.z);

}

int main(int argc, char** argv)
{
	ros::init(argc,argv,"q2_rpy");
	ros::NodeHandle n;
	rpy_publisher = n.advertise<geometry_msgs::Vector3>("rpy2",1000);
	quaternion_subscriber = n.subscribe("imu/data",1000,Quaternion_CallBack);

	// check for the incoming quaternion until ctrl+c is pressed
	ROS_INFO("waiting for quaternion");
	ros::spin();
	return 0;


}
