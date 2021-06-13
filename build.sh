#!/bin/bash

echo "Build server image..."
docker build -f Dockerfile.server  -t chrony-server:latest .

echo "Build client image..."
docker build -f Dockerfile.client  -t chrony-client:latest .