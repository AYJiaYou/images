#!/bin/bash
docker run \
    -d -p 83:8080 -p 84:29418 \
    -v /root/AYData/Gerrit:/var/gerrit/review_site:z \
    --name ay-gerrit \
    openfrontier/gerrit
