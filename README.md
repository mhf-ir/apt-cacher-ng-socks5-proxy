# APT Cacher NG With Socks5 Proxy

This container is useful for development process for speedup and saving bandwidth.

```bash
docker run --restart=always --name apt-cacher-ng-proxy -h apt-cacher-ng-proxy \
  -v /path/to/cache:/var/lib/apt-cacher-ng \
  -p 3142:3142 \
  -e SOCKS5_SERVER=172.17.0.1:9050 \
  -d apt-cacher-ng-proxy:latest entrypoint
```
