#!/bin/bash
set -e

test -f /tmp/wordpress && rm /tmp/wordpress;

(for i in $(seq 200); do
  echo -n "1,$i,$i,page,"
  head -c 200 /dev/urandom | base64 -w 0
  echo
  done
) > /tmp/wordpress &
