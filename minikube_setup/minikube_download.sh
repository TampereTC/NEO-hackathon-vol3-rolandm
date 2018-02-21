#!/bin/sh 
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd65/kubectl 
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.24.1/minikube-linux-amd64 
curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 

chmod +x kubctl minikube* docker*
cp -p kubctl minikube* docker* /usr/local/bin/.

