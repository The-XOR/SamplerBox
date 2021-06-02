#!/bin/bash
if [ ! $# -eq 1 ]
    then
    echo " remount: [rw] or [ro]"
    exit 1
fi

if [ $1 = "rw" ]
   then
   echo "Remount in R/W mode"
   sudo mount -o remount,rw /
   sudo mount -o remount,rw /boot
   exit 0
fi

if [ $1 = "ro" ]
   then
   echo "Remount in RO mode"
   sudo mount -o remount,ro /
   sudo mount -o remount,ro /boot
   exit 0 
fi

echo " remount: [rw] or [ro]"
exit 1

