#!/bin/bash

echo -e "\e[36m==>\e[0m $(hostname): Installing K3s agent and connecting to master at gehovhanS.42.fr..."
export INSTALL_K3S_EXEC="agent --server https://gehovhanS.42.fr:6443 --token-file ${TOKEN_FILE_PATH} --node-ip=${WORKER_IP}"
curl -sfL https://get.k3s.io | sh -

echo -e "\e[36m==>\e[0m $(hostname): K3s agent successfully joined the cluster."
