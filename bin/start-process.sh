#!/usr/bin/env bash

PROCESS_NAME=$1

export LD_LIBRARY_PATH=`pwd`/vendor/libgc

pwd
ls -l `pwd`

echo "process name: ${PROCESS_NAME}"
echo "port: ${PORT}"

$PROCESS_NAME --listen 0.0.0.0:${PORT}
