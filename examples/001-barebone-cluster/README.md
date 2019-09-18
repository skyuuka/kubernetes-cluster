# Introduction

A simple guide how to to setup a working kubernetes clustering using kubeadm

# The Enviroment at a glance

```bash
$ lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 16.04.6 LTS
Release:	16.04
Codename:	xenial

$ docker version
Client:
 Version:           18.06.3-ce
 API version:       1.38
 Go version:        go1.10.3
 Git commit:        d7080c1
 Built:             Wed Feb 20 02:27:18 2019
 OS/Arch:           linux/amd64
 Experimental:      false

Server:
 Engine:
  Version:          18.06.3-ce
  API version:      1.38 (minimum version 1.12)
  Go version:       go1.10.3
  Git commit:       d7080c1
  Built:            Wed Feb 20 02:26:20 2019
  OS/Arch:          linux/amd64
  Experimental:     false

$ kubeadm version
kubeadm version: &version.Info{Major:"1", Minor:"15", GitVersion:"v1.15.3", GitCommit:"2d3c76f9091b6bec110a5e63777c332469e0cba2", GitTreeState:"clean", BuildDate:"2019-08-19T11:11:18Z", GoVersion:"go1.12.9", Compiler:"gc", Platform:"linux/amd64"}

$ kubectl get nodes
NAME          STATUS   ROLES    AGE   VERSION
eywa-slave1   Ready    master   11h   v1.15.3
eywa-slave4   Ready    <none>   9h    v1.15.3

$ kubectl get pods --all-namespaces
NAMESPACE              NAME                                        READY   STATUS    RESTARTS   AGE
kube-system            coredns-5c98db65d4-7khjh                    1/1     Running   0          11h
kube-system            coredns-5c98db65d4-pbjks                    1/1     Running   0          11h
kube-system            etcd-eywa-slave1                            1/1     Running   0          11h
kube-system            kube-apiserver-eywa-slave1                  1/1     Running   0          11h
kube-system            kube-controller-manager-eywa-slave1         1/1     Running   0          11h
kube-system            kube-flannel-ds-amd64-248qb                 1/1     Running   2          9h
kube-system            kube-flannel-ds-amd64-6d2w8                 1/1     Running   12         11h
kube-system            kube-proxy-l2vq2                            1/1     Running   0          9h
kube-system            kube-proxy-w2kzp                            1/1     Running   0          11h
kube-system            kube-scheduler-eywa-slave1                  1/1     Running   0          11h
kubernetes-dashboard   dashboard-metrics-scraper-fb986f88d-j445x   1/1     Running   0          9h
kubernetes-dashboard   kubernetes-dashboard-6bb65fcc49-fjvpz       1/1     Running   0          9h
```

# Steps

This official doc is the right place to follow, and which will save you a lot of time, so check it out [here](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/)



