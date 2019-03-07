#!/bin/sh
########################################"

x=1
while [ $x -le $TIMES ]
do
  URL="https://$URL/?$(date +%s)";
  RESULT=$(curl -sIk --insecure -H 'Cache-Control: no-cache' $URL | head -n 1|cut -d' ' -f2);
  echo "Attempt: $x - Response:  $RESULT - $URL";
  sleep 1;
  x=$(( $x + 1 ));
done