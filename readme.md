# A simple showcase for setting the RTC clock via chrony daemon.

Prerequisites:
* The server and the client should not run on the same host
* The hosts are on the same network, where the server has the IP of 192.168.1.1


1. Build Docker images with:
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

```bash
bash ./google-client.sh
```

2. Change datetime and wait for synchronisation:

```bash
date -s '2021-12-24 12:00:00' && watch -n 0.1 date
```