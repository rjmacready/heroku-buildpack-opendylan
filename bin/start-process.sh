#!/usr/bin/env bash

PROCESS_NAME=$1

export LD_LIBRARY_PATH=`pwd`/vendor/libgc

# echo $PORT

$1 --listen 0.0.0.0:${PORT}
