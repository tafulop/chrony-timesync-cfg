# A simple showcase for setting the RTC clock via chrony daemon.

1. Build Docker image with:
```bash
bash ./build.sh
```

2. Start server container (Terminal 1):

Hint: if the service command asks for a password, just hit Enter.

```bash
bash ./server.sh
```

3. Start client container (Terminal 2):

```bash
bash ./client.sh
```

4. Change datetime in server container (Terminal 1) and check how the client synchronises to it:

```bash
date -s '2021-12-24 12:00:00'
```
