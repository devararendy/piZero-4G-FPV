#!/bin/bash

echo "disable if exist"
sudo systemctl disable zerotier.service
sudo systemctl disable fpvstream.service

echo "installing Services"

sudo cp ./zerotier.service  /lib/systemd/system/zerotier.service
sudo cp ./fpvstream.service /lib/systemd/system/fpvstream.service
sudo systemctl daemon-reload

echo "enabling Services..."
sudo systemctl enable zerotier.service
sudo systemctl enable fpvstream.service

echo "starting Services..."
sudo systemctl start zerotier.service
sudo systemctl start fpvstream.service

echo "geting Status..."
sudo systemctl status zerotier.service
sudo systemctl status fpvstream.service

echo "Done..."
