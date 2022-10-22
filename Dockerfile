FROM docker:latest
RUN docker run telegrammessenger/proxy:latest -p 443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data
RUN sleep 5
RUN docker logs mtproto-proxy
