FROM archlinux:latest
RUN pacman -Syu --noconfirm jre8-openjdk wget nodejs npm
WORKDIR /app
COPY . .
EXPOSE 8443
RUN npm install nodemon
RUN git clone --branch=master https://github.com/sadra/EasyMTProto
RUN cp ./config.json ./EasyMTProto/ -f
WORKDIR /app/EasyMTProto
RUN npm install
#RUN wget -c "https://github.com/tehcneko/ws.neko/releases/download/v1.1/ws.neko.jar"
CMD ["nodemon", "emtproto.js"]
