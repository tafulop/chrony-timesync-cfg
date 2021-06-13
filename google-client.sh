#!/bin/bash

docker run -it --rm --privileged --name chrony-google-client chrony-google-client:latest bash -c 'service chrony start && bash'
