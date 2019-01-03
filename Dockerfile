FROM ubuntu:18.10

ADD entrypoint /usr/local/bin/entrypoint

RUN export DEBIAN_FRONTEND=noninteractive ; \
  apt update \
  && apt upgrade -y \
  && apt update \
  && apt install apt-cacher-ng privoxy -y \
  && echo 'Proxy: http://127.0.0.1:8118' >> /etc/apt-cacher-ng/acng.conf \
  && apt-get clean && apt-get autoremove -y \
  && rm -r /var/lib/apt/lists/* && rm -rf /tmp && mkdir /tmp && chmod 777 /tmp && truncate -s 0 /var/log/*.log \
  && chmod +x /usr/local/bin/entrypoint

ADD privoxy /etc/privoxy/config

VOLUME ["/var/lib/apt-cacher-ng"]

CMD ["/usr/local/bin/entrypoint"]
