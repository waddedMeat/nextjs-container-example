#! /bin/bash

cat <<EOF

Resetting

EOF

set -x
docker-compose down -v > /dev/null 2>&1
helm -n example-nextjs delete my-app > /dev/null 2>&1
kubectl delete ns example-nextjs > /dev/null 2>&1
rm -rf my-helm-app my-app
set +x

