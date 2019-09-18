#!/bin/sh

#  https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/#pod-network
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
