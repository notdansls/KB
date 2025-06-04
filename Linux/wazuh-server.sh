#!/bin/bash

# Import the wazuh GPG key
rpm --import https://packages.wazuh.com/key/GPG-KEY-WAZUH


# Add to the repository (RHEL ≤ 8)
echo -e '[wazuh]\ngpgcheck=1\ngpgkey=https://packages.wazuh.com/key/GPG-KEY-WAZUH\nenabled=1\nname=EL-$releasever - Wazuh\nbaseurl=https://packages.wazuh.com/4.x/yum/\nprotect=1' | tee /etc/yum.repos.d/wazuh.repo


# Install wazuh manager
yum -y install wazuh-manager


# Install filebeat
yum -y install filebeat


# Get IP address, this is crude but works for my instance
deviceIP=$(hostname -I)

