#!/bin/bash
current_dir=$(pwd)
script_dir=$(dirname $0)
if [ $script_dir = '.' ]
then
    script_dir="$current_dir"
fi
echo $script_dir
mysqlVersion=5.7.20
docker run --name mysql-${mysqlVersion} -v ${script_dir}/conf:/etc/mysql/conf.d -e TZ='Asia/Shanghai' -e MYSQL_ROOT_PASSWORD=passw0rd -p 3306:3306 -d mysql:${mysqlVersion}

