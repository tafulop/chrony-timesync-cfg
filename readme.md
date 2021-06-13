# Chrony config examples

This repository contains two examples on how to use chrony for NTP-based time synchronization. 
The first example is a server-client configuration meant to be run on a local network.
The second example is a simple client, that uses time.google.com to synchronise against.

First of all, you need to build the Docker images:

```bash
bash ./build.sh
```

## Server-client images

They meant to be run on different hosts on the same network.

1. Start server container (Host 1):

Hint: if the service command asks for a password, just hit Enter.

```bash
bash ./server.sh
```

2. Start client container (Host 2):

```bash
bash ./client.sh
```

3. Change datetime in server container (Host 1) and check how the client synchronises to it:

```bash
date -s '2021-12-24 12:00:00'
```
## Google client

Uses the time.google.com NTP server to synchronise against.

1. Start container:

Hint: if the service command asks for a password, just hit Enter.

```bash
bash ./google-client.sh
```

2. Change datetime and wait for synchronisation:

```bash
date -s '2021-12-24 12:00:00' && watch -n 0.1 date
```