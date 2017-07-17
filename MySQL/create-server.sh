#!/bin/bash

docker run \
    --name ay-mysql \
    -d -p 3306:3306 --network host \
    -v /root/AYData/MySQL:/var/lib/mysql:z \
    -e MYSQL_ROOT_PASSWORD=Ayjiayou \
    -e MYSQL_USER=ay -e MYSQL_PASSWORD=ay2016jiayoukeji \
    -e MYSQL_DATABASE=mpos \
    mysql:5

