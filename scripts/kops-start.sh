#!/bin/bash

cd ..

cd kops
# kOps cluster initialisation

echo "Adding cluster configuration to bucket and provisioning"
kops create -f cluster-config.yaml

echo "Creating cluster"
kops update cluster --name ${NAME} --yes --admin
sleep 30s

echo "Starting Cluster Validation"
kops validate cluster --wait 15m

echo "Showing nodes"
kubectl get nodes -o wide
