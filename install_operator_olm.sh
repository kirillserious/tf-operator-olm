#!/bin/bash -e

cd my-operators
sudo docker build -f catalog.Dockerfile -t my-operators:latest .
sudo docker tag my-operators:latest localhost:5000/my-operators:latest
sudo docker push localhost:5000/my-operators:latest

cd ..
kubectl apply -f catalog-source.yaml
kubectl apply -f operator-subscription.yaml
kubectl apply -f operator-group.yaml
