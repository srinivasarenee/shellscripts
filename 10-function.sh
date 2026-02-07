#!/bin/bash
# run this in ec2 as it is not running in gitbashgi
USERID=$(id -u)

echo "User : $USERID"
if [ $USERID -ne 0 ]; then
    echo "Run the script with Root User."
    exit 1    
fi
VALIDATE()
{
if [ $1 -ne 0]; then
    echo "$2 Failure"
    exit 1
else
    echo "$2 Success"
fi

}
echo "Instaling NGINX"
dnf install nginx -y

VALIDATE $? "Installing Nginx"

