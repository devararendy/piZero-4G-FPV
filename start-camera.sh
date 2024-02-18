#!/bin/bash

GCS_HOST=192.168.195.26
GCS_PORT=5600

echo "Streaming to $GCS_HOST:$GCS_PORT"
libcamera-vid -t 0 -n --inline -o - | gst-launch-1.0 fdsrc fd=0 ! h264parse ! rtph264pay config-interval=10 pt=96 ! udpsink host=$GCS_HOST port=$GCS_PORT
