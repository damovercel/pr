FROM archlinux:latest
RUN pacman -Syu --noconfirm git wget libc++
RUN wget -c "https://github.com/arm64v8a/NekoXProxy/releases/download/v0.1/NekoXProxy_linux_amd64"
RUN chmod 711 NekoXProxy_linux_amd64
RUN ./NekoXProxy_linux_amd64
