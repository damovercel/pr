FROM archlinux:latest
RUN pacman -Syu --noconfirm jre8-openjdk wget
WORKDIR /app
COPY . .
RUN wget -c "https://github.com/tehcneko/ws.neko/releases/download/v1.1/ws.neko.jar"
CMD ["java", "-jar", "./ws.neko.jar"]
