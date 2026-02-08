#!/bin/bash
# run this in ec2 as it is not running in gitbashgi
# command to uninstall software
#sudo  dnf remove list gninx mysql nodejs -y
set -e
trap 'echo "There is an error at the line no: $LINENO , Command :$BASH_COMMAND"' ERR

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

echo "User : $USERID"
if [ $USERID -ne 0 ]; then
    echo -e "$R Run the script with Root User. $N" | tee -a $LOGS_FILE
    exit 1    
fi
mkdir -p $LOGS_FOLDER
# VALIDATE()
# {
# if [ $1 -ne 0 ]; then
#     echo -e "$2 $R Failure $N" | tee -a $LOGS_FILE
#     exit 1
# else
#     echo -e "$2 $G Success $N" | tee -a $LOGS_FILE
# fi

# }

for package in $@
do
dnf list installed $package &>> $LOGS_FILE
if [ $? -ne 0 ]; then
    echo "Package not installed as of now, Instaling $package"
    dnf install $package -y &>> $LOGS_FILE
   # VALIDATE $? "Installing $package"
else 
    echo -e "$Y Package $package already Installed so skipping the installation step. $N"
fi
done 

echo "Process Competed."
