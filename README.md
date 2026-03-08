# ProxyChain Linux Setup

A simple Bash script that installs and configures ProxyChains on Linux.

## Features

- Automatic ProxyChains installation
- Simple proxy configuration
- Dynamic proxy chain setup
- Backup of existing configuration

## Requirements

- Linux (Ubuntu / Debian recommended)
- sudo privileges

## Installation

Clone the repository:

```bash
git clone https://github.com/unknownbrian008/proxychain-linux-setup.git
cd proxychain-linux-setup


## Run the script:

./setup_proxychain.sh

## Example Usage

proxychains curl https://ifconfig.me
proxychains firefox
proxychains nmap example.com

## Example Proxy Entry

socks5 127.0.0.1 9050
