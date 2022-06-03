#! /bin/bash

clear
cat <<EOF

Install helm chart

EOF


helm install \
    my-app \
    --create-namespace \
    --namespace example-nextjs \
    ./my-helm-app
