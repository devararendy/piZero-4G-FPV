#!/bin/bash

NETWORK_ID=3efa5cb78a9b1f88
echo "Connecting To $NETWORK_ID"
sudo zerotier-cli join $NETWORK_ID
sudo zerotier-cli listnetworks

