#!/bin/sh

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
ls
whoami
chmod +x ./kubectl
mkdir ${HOME}/.kube
envsubst <config > ${HOME}/.kube/config

./kubectl get all
