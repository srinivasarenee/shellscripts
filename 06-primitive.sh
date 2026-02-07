#!/bin/bash

echo "All args passed to this script: $@"
echo "No of args passed to this script: $#"
echo "script name: $0"
echo "Present Directory: $PWD"
echo "Who is running: $USER"
echo "Home Directory of current user: $HOME"
echo "PID of the script:$$"
sleep 100 &
echo "PID of rencelty executed backgroud process:$!"
echo "All args passed to script: $*"

