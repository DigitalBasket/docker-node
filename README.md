# docker-node

Custom node

## Debian

```bash
cd debian
docker build -t reederz/node .
docker tag reederz/node reederz/node:8
docker push reederz/node:8
```

## Alpine

```bash
cd alpine
docker build -t reederz/node:alpine .
docker tag reederz/node:alpine reederz/node:8-alpine
docker push reederz/node:8-alpine
```
