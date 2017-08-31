#!/bin/sh

if [[ $RPROXIED_HOST ]];then
  sed -i "s/{{RPROXIED_HOST}}/$RPROXIED_HOST/g" /etc/nginx/nginx.conf
  if [[ ! $RPROXIED_SERVER_PORT ]]; then
    export RPROXIED_SERVER_PORT="80"
  fi
  sed -i "s/{{RPROXIED_SERVER_PORT}}/$RPROXIED_SERVER_PORT/g" /etc/nginx/nginx.conf
fi
exec "$@"
