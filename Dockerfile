FROM archlinux:latest
RUN pacman -Syu --noconfirm docker docker-buildx docker-compose docker-machine docker-scan
RUN systemctl start docker
RUN systemctl enable docker
RUN docker run -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data telegrammessenger/proxy:latest
RUN sleep 5
RUN docker logs mtproto-proxy
