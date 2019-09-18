#!/bin/sh

# Resources
#   https://kubernetes.io/docs/home/


# Install Docker 
# check more information here https://docs.docker.com/install/linux/docker-ce/ubuntu/
# You can also download the binary from https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG-1.11.md#downloads-for-v1111
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
# apt-cache madison docker-ce
sudo apt-get install -y docker-ce=18.06.3~ce~3-0~ubuntu

# Install kubernetes
sudo apt-get purge kubeadm kubelet kubernetes-cni
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
# apt-cache madison kubeadm
# This will install kubeadm kubelet kubectl and kubernetes-cni
sudo apt-get -y install kubeadm=1.15.3-00 kubelet=1.15.3-00 kubernetes-cni=0.7.5-00
