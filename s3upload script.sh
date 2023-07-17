#!/bin/bash
#Purpose: Script to upload Files and directory to AWS portal
#Verison:1.0
#Created Date: Wed May 18 09:35:12 IST 2022
#Author: Amit kashyap
#START#

data=/Backupdrive
x=1
aws s3 sync $data s3://amit5794
find $data -type f -mtime +$x -exec rm -f {} \;
find $data -type d -mtime +$x -exec rm -f {} \;

if [ $? -eq 0 ]
then
        echo "data uploaded to drive"
        echo
        echo "successfully uploaded and deleted from the drive"

else
        echo "s3 uploding file is not successful"
fi

