#!/bin/bash

PWEROOT=${PWE_CONF_home:-"/PWE/examples/static_web"}

sed -i "s@/PWEROOT@$PWEROOT@g" /etc/nginx/conf.d/default.conf

nginx -g "daemon off; error_log stderr info;"
