#!/bin/bash
docker run --name mongo -e TZ='Asia/Shanghai' -p 27017:27017 -d mongo
