#!/bin/bash

clear
cat <<EOF

Push to the image registry
(only I can do this)

EOF

set -x
docker push waddedmeat/example-nextjs
set +x
