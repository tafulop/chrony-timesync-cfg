#!/bin/bash

docker run -it --rm --privileged --name chrony-server chrony-server:latest bash -c 'service chrony start && bash'
