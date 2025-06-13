#!/bin/bash

echo -e "\e[36m==>\e[0m $(hostname): Installing K3s Control Plane..."

export INSTALL_K3S_EXEC="server --write-kubeconfig-mode 644 --advertise-address=${MASTER_IP} --node-ip=${MASTER_IP}"
curl -sfL https://get.k3s.io | sh -

echo -e "\e[36m==>\e[0m $(hostname): Saving K3s node token for worker nodes..."
sudo cat /var/lib/rancher/k3s/server/node-token > "$TOKEN_FILE_PATH"

echo -e "\e[36m==>\e[0m $(hostname): K3s Control Plane setup complete."
