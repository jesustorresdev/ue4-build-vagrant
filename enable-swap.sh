#!/bin/bash
#
# Vagrant provisioning script.
#
# Add swap space
# http://jeqo.github.io/blog/devops/vagrant-quickstart/
#

set -e

# Size of swap in megabytes
SWAP_SIZE=8000

# Create swap
set +e
grep -q "swapfile" /etc/fstab
swap_not_found=$?
set -e

if [ "$swap_not_found" -ne 0 ]; then
  echo 'Swap not found. Creating a swap file.'
  fallocate -l ${SWAP_SIZE}M /swapfile
  chmod 600 /swapfile
  mkswap /swapfile
  swapon /swapfile
  echo '/swapfile none swap sw 0 0' >> /etc/fstab
else
  echo 'Swap found. No changes made.'
fi

df -h
cat /proc/swaps
cat /proc/meminfo | grep Swap

