#!/bin/bash
# these special variabls are very important ,,asks in interview 
echo " all variables passed to script $@"
echo " number of variables passed  to script : $#"
echo "scirpt name : $0"
echo " present which directory you are in :$PWD"
echo "who is running this script : $USER"
echo " home directory of user :$HOME"
echo "PID OF script :$$"
sleep 10  &

echo " background process of the recently task :$!"