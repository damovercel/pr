FROM docker:latest
RUN docker run -it telegrammessenger/proxy:latest -p 443:443
