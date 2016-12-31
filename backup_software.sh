#!/bin/bash



source "settings.conf"

# Record the list of installed software on system
dpkg --get-selections > ${INSTALLED_SOFTWARE_BACKUP_DIRECTORY}/SOFTWARE-${HOSTNAME}-${DATE}.log

${COMPRESSION_TOOL} ${COMPRESSION_TOOL_OPTIONS} ${INSTALLED_SOFTWARE_BACKUP_DIRECTORY}/SOFTWARE-${HOSTNAME}-${DATE}.log

