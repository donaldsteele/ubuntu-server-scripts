#!/bin/bash
cd /system/scripts
./backup_databases.sh & 
./backup_fs.sh & 
./backup_software.sh &
