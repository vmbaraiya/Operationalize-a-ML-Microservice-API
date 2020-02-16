#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="vmbaraiya/housepriceimage"
# Step 2
# Run the Docker Hub container with kubernetes
sudo docker pull vmbaraiya/housepriceimage
sudo kubectl run k8s-houseprice-app --image=vmbaraiya/housepriceimage --port=80

# Step 3:
# List kubernetes pods
echo "List the Kubernetes PODS"
sudo kubectl get pods

#echo "to view what containers are inside that Pod and what images are used to build those containers we run the describe pods command"
#sudo kubectl describe pods

# Step 4:
# Forward the container port to a host
#echo "Expose Kubernete deployment"
#sudo kubectl expose deployment k8s-houseprice-app --type="NodePort" --port=8000 --target-port=80
sudo kubectl port-forward deployment/k8s-houseprice-app 8000:80
