#!/bin/bash

clear
cat <<EOF

Run docker-compose


This is what the docker-compose.yaml looks like


EOF

cat docker-compose.yaml


cat <<EOF


EOF

read -p ""

set -x
docker-compose up
set +x
