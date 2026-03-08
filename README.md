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


# Example Free US Proxies


| Proxy Type | Host (IP:Port)      | Hostname / Organization (ISP) | Latency  | Uptime |
| ---------- | ------------------- | ----------------------------- | -------- | ------ |
| SOCKS5     | 209.126.1.101:65373 | US Datacenter (Unknown ISP)   | ~102 ms  | 99%    |
| HTTP       | 45.194.53.115:80    | US Datacenter                 | ~11 ms   | 100%   |
| HTTP       | 199.34.228.233:80   | US Datacenter                 | ~4 ms    | 100%   |
| SOCKS4     | 154.38.189.6:10000  | Orangeburg Datacenter         | ~122 ms  | 77%    |
| HTTP       | 68.183.98.179:80    | North Bergen Datacenter       | ~117 ms  | 34%    |
| HTTP       | 161.35.60.102:80    | North Bergen Datacenter       | ~617 ms  | 26%    |
| HTTP       | 47.251.74.38:999    | Alibaba Cloud LLC             | ~2344 ms | 28%    |
| HTTP       | 47.90.167.27:1000   | Alibaba.com LLC               | ~2259 ms | 43%    |
| HTTP       | 47.252.18.37:8060   | Alibaba Cloud LLC             | ~2234 ms | 45%    |
| HTTP       | 34.216.224.9:20769  | Amazon.com Inc                | ~812 ms  | 4%     |


