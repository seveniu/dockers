#!/bin/bash
docker run --name redis -e TZ='Asia/Shanghai' -p 6379:6379 -d redis
