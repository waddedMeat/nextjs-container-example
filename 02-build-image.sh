#!/bin/bash

clear
cat <<EOF

Build the image using the Dockerfile


EOF

set -x
cat Dockerfile
set +x

read -p ""

set -x
docker build -t waddedmeat/example-nextjs .
set +x
