#!/bin/bash
current_dir=$(pwd)
script_dir=$(dirname $0)
if [ $script_dir = '.' ]
then
    script_dir="$current_dir"
fi
echo ${script_dir}
docker run -p 80:80 -v ${script_dir}/nginx.conf:/etc/nginx/nginx.conf:ro --name nginx -d nginx:latest
