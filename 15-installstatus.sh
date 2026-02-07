#!/bin/bash
# run this in ec2 as it is not running in gitbashgi
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

echo "User : $USERID"
if [ $USERID -ne 0 ]; then
    echo "Run the script with Root User." | tee -a $LOGS_FILE
    exit 1    
fi
mkdir -p $LOGS_FOLDER
VALIDATE()
{
if [ $1 -ne 0 ]; then
    echo "$2 Failure" | tee -a $LOGS_FILE
    exit 1
else
    echo "$2 Success" | tee -a $LOGS_FILE
fi

}

for package in $@
do
dnf list installed $package &>> $LOGS_FILE
if [ $? -ne 0 ]; then
    echo "Package not installed as of now, Instaling $package"
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "Installing $package"
else 
    "Package $package already Installed so skipping the installation step."
fi
done 

echo "Process Competed."
