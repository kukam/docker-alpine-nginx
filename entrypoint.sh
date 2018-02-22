#!/bin/bash

PWEHOST=`/sbin/ip route|awk '/default/ { print $3 }'`
PWEROOT=${PWE-CONF-pwe-home:-"/PWE/examples/static_web"}

sed -i "s@/PWEROOT@$PWEROOT@g" /etc/nginx/conf.d/default.conf
sed -i "s@PWEHOST@$PWEHOST@g" /etc/nginx/conf.d/default.conf

nginx -g "daemon off; error_log stderr info;"
