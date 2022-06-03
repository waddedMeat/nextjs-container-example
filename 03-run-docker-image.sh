#! /bin/bash

clear
cat <<EOF

Run docker image locally

EOF

set -x

docker run \
    --rm \
    -it \
    -p 3000:3000 \
    waddedmeat/example-nextjs

set +x
