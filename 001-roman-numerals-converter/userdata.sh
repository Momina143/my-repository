#!/bin/bash -x

# update system
yum update -y

# install Python and flask
yum install python3 -y
yum install pip -y
pip install flask

# install the code
cd /home/ec2-user

wget 