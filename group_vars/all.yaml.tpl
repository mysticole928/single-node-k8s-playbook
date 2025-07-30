---
# Versions (dynamically set by Terraform)
kubernetes_version: "${kubernetes_version}"
calico_version: "${calico_version}"
etcd_version: "${etcd_version}"
metrics_server_version: "${metrics_server_version}"
dashboard_version: "${dashboard_version}"
nginx_ingress_version: "${nginx_ingress_version}"

# Node configuration
node_name: "k8s-single-node"
pod_network_cidr: "192.168.0.0/16"

# Package lists
system_packages:
- apt-transport-https
- ca-certificates
- curl
- gnupg
- python3-pip
- jq
- python3-kubernetes
- python3-openshift
- at
- apt-transport-https
- lsb-release
- python3-apt
- software-properties-common
- nfs-common
- net-tools
- ipvsadm
- ipset
- socat

containerd_packages:
- containerd.io

docker_packages:
- docker-ce
- docker-ce-cli

k8s_packages:
- kubelet
- kubeadm
- kubectl

# User configuration
k8s_user: ubuntu

# Skip APT lock check
skip_apt_lock_check: true