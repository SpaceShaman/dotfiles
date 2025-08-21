#!/bin/bash
# Download the Ubuntu APT package provided by Synaptics.com, the official 
# makers of DisplayLink
wget https://www.synaptics.com/sites/default/files/Ubuntu/pool/stable/main/all/synaptics-repository-keyring.deb

# Install the DisplayLink APT package keyring
apt install ./synaptics-repository-keyring.deb

# Update your APT package cache
apt update

# Install the DisplayLink driver provided by Synaptics.com, the official source
apt install displaylink-driver
