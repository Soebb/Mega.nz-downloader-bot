#!/bin/bash

# Start docker
start-docker.sh

# Your commands go here
git clone https://github.com/Soebb/chief-vid
cd chief-vid || exit 1
docker build -t boehmls/chief-video:latest .
docker run --privileged ubuntu-dind docker run --rm -v /app/videos:/app/videos -p 5000:5000 -e "VIDEO_URL=/app/videos" boehmls/chief-video:latest
dockerd
