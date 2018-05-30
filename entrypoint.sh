#!/bin/bash

cd /home/node/app/src
sequelize db:migrate

cd ..
if [ "$NODE_ENV" = "production" ]
then
    FOREVER_FILE="forever/production.json"
else
    FOREVER_FILE="forever/development.json"
fi

echo "starting forever with config file $FOREVER_FILE"
forever --minUptime 1000 --spinSleepTime 1000 \
 -l /logs/log \
 -e /logs/err.log \
 -o /logs/out.log \
 $FOREVER_FILE