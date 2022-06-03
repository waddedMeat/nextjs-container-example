This is a collection of scripts to demonstrate containerization
These scripts assume docker, docker-compose, and helm are installed


00-create-nextjs-app.sh
Creates a nextjs application using a container runtime

01-run-docker-compose.sh
Executes local nextjs application using docker-compose

03-run-docker-image.sh
Executes a nextjs application container

04-push-image.sh
Pushes a container image to a remote repository

05-create-helm-charts.sh
Creates example helm charts for deploying the image built in previous scripts

06-helm-install.sh
Installs the helm chart build in the previous script

07-reset.sh
Removes the k8s namespace and helm application create in previous scripts
Removes the nextjs application and helm charts generated in previous scripts


