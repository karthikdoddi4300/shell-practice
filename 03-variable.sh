#!/bin/bash
echo "printinh timestamp"
# syntax VAR_NAME=$(command) ,,,this queston asks in interview 
TIMESTAMP=$(date)
echo "script executed in $TIMESTAMP"  

sleep 10

ENDTIME =$(date)
echo " end time is $ENDTIME "