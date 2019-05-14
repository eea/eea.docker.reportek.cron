#!/bin/sh
set -e

echo "$CRONTAB" > /crontab

crontab /crontab
crond -f -L -
