FROM docker:latest
RUN docker run -p 443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data telegrammessenger/proxy:latest
RUN sleep 5
RUN docker logs mtproto-proxy
