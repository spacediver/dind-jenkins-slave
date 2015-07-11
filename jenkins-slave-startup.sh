#!/bin/bash

set -ex

# start the docker daemon
/usr/local/bin/wrapdocker &

java -jar swarm-client-1.22-jar-with-dependencies.jar -master http://$MASTER_PORT_8080_TCP_ADDR:$MASTER_PORT_8080_TCP_PORT $EXTRA_PARAMS
