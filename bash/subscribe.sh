#!/bin/bash
#
# Subscribe to changes
#
# For more details please see
# http://developer.couchbase.com/mobile/develop/references/couchbase-lite/rest-api/database/get-changes/index.html
#
HOSTNAME=192.168.38.101
SGPORT=4985
DBNAME=db
#
echo "### Press Control-C to exit ###"
while [ 1 ]
do
  curl -s "http://$HOSTNAME:$SGPORT/$DBNAME/_changes?feed=continuous&include_docs=true" | jq '.doc'
  echo "### Reconnecting..."
done
#
# eof
