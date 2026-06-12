#!/bin/bash

read -p "enter the software package you want to install: " package

if [[ $package == "nginx" ]]; 
then
	echo "installing nginx package..!"
	sudo apt-get install nginx -y
elif [[ $package == "apache2" ]];
then
	echo "installing apache2 package..!"
	sudo apt-get install apache2 -y
else
	echo "please check the package"
fi

def check_package_status() {

if [[ $package == "running" ]];
then
	echo "$package is running"
else
	echo "$package is not running"
fi

check_package_status

