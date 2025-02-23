#!/bin/bash -x

# update system
yum update -y

# install Python and flask
yum install python3 -y
yum install pip -y
pip install flask

### install the code ###

# change the user directory
cd /home/ec2-user

# get the app.py file into current directory
FOLDER="https://raw.githubusercontent.com/Momina143/my-repository/refs/heads/main/001-roman-numerals-converter"
wget ${FOLDER}/app.py

# get the templates into the templates/ directory
mkdir templates
cd templates
wget ${FOLDER}/templates/index.html
wget ${FOLDER}/templates/result.html

# run the python application
cd ..
python3 app.py


