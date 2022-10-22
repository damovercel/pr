FROM archlinux:latest
RUN pacman -Syu --noconfirm git
RUN git clone https://aur.archlinux.org/snapd.git
WORKDIR /snapd
RUN makepkg -si
RUN systemctl enable --now snapd.socket
RUN ln -s /var/lib/snapd/snap /snap
RUN snap install docker
RUN systemctl start docker.service
RUN systemctl enable docker.service
RUN docker info
RUN groupadd docker
RUN gpasswd -a user docker root
RUN docker version
RUN docker run -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data telegrammessenger/proxy:latest
RUN sleep 5
RUN docker logs mtproto-proxy
