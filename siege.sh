#!/bin/bash
dkr=`docker-machine ip`
for i in {1..100}
do 
    siege -d1 -c40 -t5M -i http://$dkr
    siege -d4 -c30 -t5M -i http://$dkr
    siege -d1 -c50 -t5M -i http://$dkr
    siege -d0.5 -c10 -t5M -i http://$dkr
    siege -d1 -c40 -t5M -i http://$dkr
    siege -d2 -c30 -t5M -i http://$dkr
    siege -d4 -c70 -t5M -i http://$dkr
    siege -d1 -c40 -t5M -i http://$dkr
done
