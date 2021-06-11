#!/bin/bash

docker run -it --rm --privileged --name chrony time-server:latest bash -c 'service chrony start && date -s 2021-12-31 &&watch -n 1.0 date'