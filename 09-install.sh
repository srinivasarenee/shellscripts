#!/bin/bash
# run this in ec2 as it is not running in gitbash
USERID=$(id -u)

echo "User : $USERID"
if [ $USERID -ne 0 ]; then
    echo "Run the script with Root User."
    exit 1    
fi
echo "Instaling NGINX"
dnf install nginx -y

if [ $? -ne 0]; then
    echo "Installing Nginx Failure"
    exit 1
else
    echo "Installing Nginx Success"
fi

