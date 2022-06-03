#! /bin/bash

clear
cat <<EOF

Create helm default charts with some assumptions

This assumes the use of the nginx ingress controller

EOF

set -x
helm create my-helm-app
set +x

read -p "The example helm chart is built for nginx; we need to make some changes"
diff -u ./my-helm-app/values.yaml ./files/values.yaml | view -
diff -u ./my-helm-app/templates/deployment.yaml ./files/deployment.yaml | view -

cp ./files/values.yaml ./my-helm-app/values.yaml
cp ./files/deployment.yaml ./my-helm-app/templates/deployment.yaml
