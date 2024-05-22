FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g http-server
RUN mkdir /app
COPY index.html /app 
RUN chmod +x /app/index.html
HEALTHCHECK CMD curl http://localhost
CMD ["http-server"]
EXPOSE 8080
