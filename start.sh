#!/usr/bin/env bash

# 1. Enable IPv6 forwarding (one-time)
sudo sysctl -w net.ipv6.conf.all.forwarding=1

# 2. Configure NAT (one rule)
sudo iptables -t nat -A POSTROUTING -s 192.168.240.0/24 -o wlan0 -j MASQUERADE

# 3. Allow forwarding (two rules for bidirectional traffic)
sudo iptables -A FORWARD -i waydroid0 -o wlan0 -j ACCEPT
sudo iptables -A FORWARD -i wlan0 -o waydroid0 -m state --state RELATED,ESTABLISHED -j ACCEPT
