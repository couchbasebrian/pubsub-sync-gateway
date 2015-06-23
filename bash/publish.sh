#!/bin/bash
#
# Publish changes
#
# For reference please see
# http://developer.couchbase.com/mobile/develop/references/couchbase-lite/rest-api/document/put---db---doc-/index.html
#
HOSTNAME=192.168.38.101
SGPORT=4985
DBNAME=db
#
TEMPFILE=./tempfile.json
#
echo "### Press Control-C to exit ###"
#
ITERATION=1000
while [ 1 ]
do
  echo "### Creating data file...(Iteration $ITERATION)"
  TIMENOW=`date +%F-%H:%M:%S`
  ITERATION=$[ITERATION+1]
  DOCUMENTID=document$ITERATION
  #
  echo "{" > $TEMPFILE
  echo " \"timenow\": \"$TIMENOW\" " >> $TEMPFILE
  echo "}" >> $TEMPFILE
  cat $TEMPFILE
  #
  echo "### About to publish..."
  curl -X PUT -H "Content-Type: application/json" "http://$HOSTNAME:$SGPORT/$DBNAME/$DOCUMENTID" --data @$TEMPFILE
  echo
  #sleep 1
done
#
# eof
