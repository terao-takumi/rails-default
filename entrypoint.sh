#!/bin/bash
set -e
rm -f /${APP_ROOT}/tmp/pids/server.pid
exec "$@"