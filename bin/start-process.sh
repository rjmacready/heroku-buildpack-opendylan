#!/usr/bin/env bash

PROCESS_NAME=$1

export LD_LIBRARY_PATH=`pwd`/vendor/libgc

# --listen "0.0.0.0$PORT"

echo $PORT

$1
