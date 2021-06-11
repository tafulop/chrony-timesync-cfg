# A simple showcase for setting the RTC clock via chrony daemon.

1. Build Docker image with:
```bash
bash ./build.sh
```

2. Start chrony, change current datetime and wait for sync:

Hint: if the service command asks for a password, just hit Enter.

```bash
bash ./run.sh
```
