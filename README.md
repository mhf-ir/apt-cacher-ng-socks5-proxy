# APT Cacher NG With Socks5 Proxy

[![Docker Repository on Quay](https://quay.io/repository/sweb/apt-cacher-ng-socks5-proxy/status "Docker Repository on Quay")](https://quay.io/repository/sweb/apt-cacher-ng-socks5-proxy)

This container is useful for development process for speedup and saving bandwidth.

```bash
docker run --restart=always --name apt-cacher-ng-proxy -h apt-cacher-ng-proxy \
  -v /tmp/apt-ng-cache:/var/lib/apt-cacher-ng \
  -p 3142:3142 \
  -e SOCKS5_SERVER=172.17.0.1:9050 \
  -d quay.io/sweb/apt-cacher-ng-socks5-proxy:master entrypoint
```
