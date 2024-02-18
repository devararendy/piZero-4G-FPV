#!/bin/bash

echo "disable if exist"
sudo systemctl disable zerotier.service
sudo systemctl disable fpvstream.service
sudo systemctl disable mavlink.service

echo "installing Services"

sudo cp ./zerotier.service  /lib/systemd/system/zerotier.service
sudo cp ./fpvstream.service /lib/systemd/system/fpvstream.service
sudo cp ./mavlink.service /lib/systemd/system/mavlink.service

sudo systemctl daemon-reload

echo "enabling Services..."
sudo systemctl enable zerotier.service
sudo systemctl enable fpvstream.service
sudo systemctl enable mavlink.service

echo "starting Services..."
sudo systemctl start zerotier.service
sudo systemctl start fpvstream.service
sudo systemctl start mavlink.service

echo "geting Status..."
sudo systemctl status zerotier.service
sudo systemctl status fpvstream.service
sudo systemctl status mavlink.service

echo "Done..."
