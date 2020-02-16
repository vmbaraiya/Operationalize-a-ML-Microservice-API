#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="vmbaraiya/housepriceimage"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker image tag housepriceimage vmbaraiya/housepriceimage


# Step 3:
# Push image to a docker repository
sudo docker image push vmbaraiya/housepriceimage
