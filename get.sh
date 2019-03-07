#!/bin/sh
########################################"

x=1
while [ $x -le $TIMES ]
do
  echo "$x Response: $(curl -sIk --insecure -H 'Cache-Control: no-cache' https://$URL?$(date +%s) | head -n 1|cut -d' ' -f2)"
  x=$(( $x + 1 ))
done