#!/bin/sh

set -eu

if [ -f ./test.sh ]; then
  ./test.sh
fi

if [ "${1:-}" = "shell" ]; then
  shift
  /bin/bash "$@"
else
  /cockroach/cockroach "$@"
fi
