#/bin/bash
backupPath=./
containerName=mysql
mysqlUsername=root
mysqlPassword=passw0rd

echo "backup ..."
docker exec ${containerName} /usr/bin/mysqldump -u ${mysqlUsername} --password=${mysqlPassword} --all-databases | gzip > $backupPath`date '+%Y%m%d'.sql.gz`
