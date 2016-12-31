#!/bin/bash
source "settings.conf"



DATABASES=$(mysql --user=${DBUSER} --password=${DBPASSWORD} -e "SHOW DATABASES;" | tr -d "| " | grep -v Database)

for DB_NAME in ${DATABASES}; do
    if [[ "${DB_NAME}" != "information_schema" ]] && [[ "${DB_NAME}" != _* ]] && [[ "${DB_NAME}" != "performance_schema" ]] ; then
        #echo "Dumping database: $DB_NAME"
         mysqldump --user=${DBUSER} --password=${DBPASSWORD} --host=${DBHOST} ${DB_NAME} > ${DB_BACKUP_DIRECTORY}/DB-${HOSTNSME}-${DB_NAME}-${DATE}.sql
        ${COMPRESSION_TOOL} ${COMPRESSION_TOOL_OPTIONS} ${DB_BACKUP_DIRECTORY}/DB-${HOSTNSME}-${DB_NAME}-${DATE}.sql
    fi
done
 
