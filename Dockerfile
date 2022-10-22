FROM archlinux:latest
RUN pacman -Syu --noconfirm docker docker-buildx docker-compose docker-machine docker-scan
RUN eval "$(docker-machine env default)"
RUN docker run -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data telegrammessenger/proxy:latest
RUN sleep 5
RUN docker logs mtproto-proxy
