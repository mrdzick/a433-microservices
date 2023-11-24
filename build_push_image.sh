#! /bin/bash

# Build docker image
docker build -t item-app:v1 .;

# Show list images
docker images ls;

# Change image name for github packages
docker tag item-app:v1 ghcr.io/mrdzick/item-app:v1;

# Set personal access token of github
export CR_PAT=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;

# Login to container registry
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin;

# Push docker image to container registry
docker push ghcr.io/mrdzick/item-app:v1;