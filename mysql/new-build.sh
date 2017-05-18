#!/bin/bash
docker build ./ -t self/mysql:1.0.0
docker run --name mysql -e MYSQL_ROOT_PASSWORD=passw0rd -p 3306:3306 -d self/mysql:1.0.0
