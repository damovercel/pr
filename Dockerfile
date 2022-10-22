FROM docker:latest
RUN docker run -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data telegrammessenger/proxy:latest
RUN sleep 5
RUN docker logs mtproto-proxy
