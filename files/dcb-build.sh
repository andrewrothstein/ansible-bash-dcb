#!/bin/bash
set -xe
. dcb-env.sh
OS=${1:-${DEFAULT_OS}}
TARGET_CONTAINER=$TARGET_USER/${TARGET_APP}_$OS
docker build -t $TARGET_CONTAINER $OS
