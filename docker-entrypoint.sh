#!/bin/sh

if [ $# -ne 3 ]; then
  echo "Usage: $(basename "$0") <target> <expiration> <duration>" 1>&2
  exit 1
fi

target=$1
expiration=$(awk "BEGIN { print $2/60 }")
duration=$3

while true
do
  find "$target" -type f -amin +"$expiration" -delete -print
  sleep "$duration" & wait $!
done
