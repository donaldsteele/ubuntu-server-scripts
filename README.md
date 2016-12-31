# ubuntu-server-scripts
Backup scripts for server maintenance 


edit settings.conf then make sure all .sh files are executable. 

2 utility scripts are included generate_password.sh and create_backup_user.sh 

generate_password.sh will generate a random password 

create_backup_user.sh will create the backup user in mysql [must edit settings.conf first!]


once configured you can perform all backups daily by creating a script in /etc/cron.daily for example
on my system i have a root directory named /system/scripts where this repository resides

/etc/cron.daily/backup contains 

```bash

#!/bin/bash
/system/scripts/backup_all.sh

```

