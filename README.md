# pubsub-sync-gateway
Simple example of publish/subscribe with bash/curl using sync gateway

How to use:

1.  Set up a Couchbase cluster
2.  Create a bucket called "bucketForSyncGateway"
3.  Start up Sync Gateway on a node in the cluster using the included config file.
4.  Change the host or IP address in the publish.sh and subscribe.sh scripts 
5.  In one terminal window, run publish.sh
6.  In another terminal window, run subscribe.sh

Example of publish.sh output:

    ### Creating data file...(Iteration 1020)
    {
     "timenow": "2015-06-23-12:58:19" 
    }
    ### About to publish...
    {"id":"document1021","ok":true,"rev":"1-230341ea7505fa9102c94e315a92131d"}

Example of subscribe.sh output:

    {"seq":97,"id":"document34","changes":[{"rev":"1-310de857e3a01975b6ba5e0fce80d48b"}]}

