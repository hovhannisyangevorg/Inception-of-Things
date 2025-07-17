#!/bin/bash

echo -e "\e[36m==>\e[0m $(hostname): Aliasing kubectl command line tools..."
echo "alias k='kubectl'" >> /home/vagrant/.bashrc