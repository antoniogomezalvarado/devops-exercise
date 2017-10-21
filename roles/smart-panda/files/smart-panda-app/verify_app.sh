#!/bin/bash

#Basic post deploy verification

CONFIG_DIR=$(dirname "$0")

port=$(grep port ${CONFIG_DIR}/config.json | cut -d':' -f2 | sed -e 's/\"\(.*\)\"/\1/g' |  tr -d [:space:])
http_code=$(curl -s -o /dev/null -w "%{http_code}" "localhost:${port}")
if [[ "${http_code}" == "200" ]]; then
	exit 0
else
	exit 1
fi
