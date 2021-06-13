#!/bin/bash

docker run -it --rm --privileged --name chrony-client chrony-client:latest bash -c 'service chrony start && watch -n 0.1 date'