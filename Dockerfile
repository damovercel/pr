FROM docker:latest
RUN docker build -t telegrammessenger/proxy:latest .
RUN docker run telegrammessenger/proxy:latest -p 443:443
