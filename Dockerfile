FROM docker:latest
RUN docker run telegrammessenger/proxy:latest -p 443:443
