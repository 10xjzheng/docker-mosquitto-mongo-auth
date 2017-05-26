#!/bin/sh
set -e

chown mosquitto:mosquitto -R /mosquitto/data

if [ "$1" = 'mosquitto' ]; then
	#if [ -z "$(ls -A "$PGDATA")" ]; then
	#fi

	exec /usr/local/sbin/mosquitto -c /mosquitto/config/mosquitto.conf
fi

exec "$@"
