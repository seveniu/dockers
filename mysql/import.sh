#!/bin/bash
#containerName=mysql
containerName=mysql-5.7.17
backupFileName=local.sql
cat ${backupFileName} | docker exec -i ${containerName} /usr/bin/mysql -uroot --password=passw0rd
