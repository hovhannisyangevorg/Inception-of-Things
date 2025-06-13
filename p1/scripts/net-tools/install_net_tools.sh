#!/bin/bash

echo -e "\e[36m==>\e[0m $(hostname): Installing net-tools..."
sudo apt-get update && sudo apt-get install -y curl net-tools

echo -e "\e[36m==>\e[0m $(hostname): Add host-only domain for master node."
echo "${MASTER_IP} gehovhanS gehovhanS.42.fr" >> /etc/hosts

echo -e "\e[36m==>\e[0m $(hostname): Add host-only domain for worker node."
echo "${WORKER_IP} gehovhanSW gehovhanSW.42.fr" >> /etc/hosts

echo -e "\e[36m==>\e[0m $(hostname): net-tools installed successfully..."
