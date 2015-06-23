#!/bin/bash
#
# Subscribe to changes
#
HOSTNAME=192.168.38.101
SGPORT=4985
DBNAME=db
#
echo "### Press Control-C to exit ###"
while [ 1 ]
do
  curl "http://$HOSTNAME:$SGPORT/$DBNAME/_changes?feed=continuous"
  echo "### Reconnecting..."
done
#
# eof
