#! /bin/bash

# Build docker image
docker build -t ghcr.io/mrdzick/karsajobs:latest .;

# Set personal access token of github
export CR_PAT=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;

# Login to container registry
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin;

# Push docker image to container registry
docker push ghcr.io/mrdzick/karsajobs:latest;