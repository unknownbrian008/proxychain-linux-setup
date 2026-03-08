#!/bin/bash

# ProxyChains Setup Script
# Author: Your Name
# Description: Installs and configures proxychains for Linux

CONFIG_FILE="/etc/proxychains.conf"

echo "[+] Checking for proxychains..."

if ! command -v proxychains >/dev/null 2>&1; then
    echo "[+] ProxyChains not found. Installing..."
    sudo apt update
    sudo apt install -y proxychains
else
    echo "[+] ProxyChains already installed."
fi

echo ""
read -p "Proxy type (socks4/socks5/http): " PROXY_TYPE
read -p "Proxy IP: " PROXY_IP
read -p "Proxy Port: " PROXY_PORT

echo "[+] Backing up config..."
sudo cp $CONFIG_FILE ${CONFIG_FILE}.bak

echo "[+] Setting dynamic chain..."

sudo sed -i 's/^strict_chain/#strict_chain/' $CONFIG_FILE
sudo sed -i 's/^#dynamic_chain/dynamic_chain/' $CONFIG_FILE

echo "[+] Removing old proxies..."
sudo sed -i '/^\(socks4\|socks5\|http\)/d' $CONFIG_FILE

echo "[+] Adding new proxy..."
echo "$PROXY_TYPE $PROXY_IP $PROXY_PORT" | sudo tee -a $CONFIG_FILE

echo ""
echo "[+] ProxyChains configured!"
echo "Example usage:"
echo "proxychains curl https://ifconfig.me"
