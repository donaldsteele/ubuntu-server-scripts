#!/bin/bash

source "settings.conf"

# uncomment to print start status message. 
#echo "Backing up ${FS_DIRECTORIES} to ${FS_BACKUP_DIRECTORY}/${FS_ARCHIVE}"

# Backup the files using tar.
${ARCHIVE_TOOL} ${ARCHIVE_TOOL_OPTIONS} ${FS_BACKUP_DIRECTORY}/${FS_ARCHIVE} ${FS_DIRECTORIES}


