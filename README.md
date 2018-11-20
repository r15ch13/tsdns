# tsdns
A tsdns container based on the official [`teamspeak:latest`](https://hub.docker.com/_/teamspeak/) image.

# compose
```yaml
version: "3"

services:
  tsdns:
    image: r15ch13/tsdns:latest
    restart: always
    ports:
      - "41144:41144"
    volumes:
      - tsdns:/var/run/tsdns/

volumes:
  tsdns:
```
