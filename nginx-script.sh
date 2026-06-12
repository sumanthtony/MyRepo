#!/bin/bash

#!/bin/bash

read -p "Enter the software package you want to install: " package

if [[ $package == "nginx" ]]
then
        echo "Installing nginx package..."
        sudo apt-get install nginx -y

elif [[ $package == "apache2" ]]
then
        echo "Installing apache2 package..."
        sudo apt-get install apache2 -y

else
        echo "Please check the package name"
        exit 1
fi

check_package_status() {

    if systemctl status $package >/dev/null 2>&1
    then
            echo "$package is running"
    else
            echo "$package is not running"
    fi
}

check_package_status
