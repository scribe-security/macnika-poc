FROM ubuntu:20.04
RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g http-server
RUN mkdir /app
COPY index.html /app
HEALTHCHECK CMD curl http://localhost
EXPOSE 80
