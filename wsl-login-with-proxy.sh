#!/bin/sh
host_ip=$(cat /etc/resolv.conf | grep "nameserver" | cut -f 2 -d " ")
export ALL_PROXY="socks5://$host_ip:7890"
export all_proxy="socks5://$host_ip:7890"
export https_proxy="socks5://$host_ip:7890"
export http_proxy="http://$host_ip:7890"
echo "setting proxy done."
curl myip.ipip.net
fish
