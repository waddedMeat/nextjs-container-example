#! /bin/bash

clear
cat <<EOF


This runs docker a container using image node:lts

It mounts the current directory as /app inside the container
And sets /app as the current working directory
running the command as the "node" user (more on that later)

The container will execute the command and exit.

The --rm flag will remove the container after it exits.
Without the --rm flag, the container will persist and can be executed again

EOF

set -x
docker run \
    --rm \
    -v $PWD:/app \
    -w /app \
    -u node:node \
    node:lts \
    bash -c 'yes | npx create-next-app@latest --use-npm my-app'
set +x
