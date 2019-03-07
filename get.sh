#!/bin/sh
########################################"

x=1
while [ $x -le $TIMES ]
do
  URL="https://$URL/?$(date +%s)"
  echo "Attempt: $x | Response: $(curl -sIk --insecure -H 'Cache-Control: no-cache' $URL | head -n 1|cut -d' ' -f2) | $URL"
  sleep 1
  x=$(( $x + 1 ))
done