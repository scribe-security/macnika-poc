FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g http-server
#RUN mkdir /app
COPY index.html / 
RUN chmod +x /index.html
HEALTHCHECK CMD curl http://localhost
CMD ["http-server", "/", "-p", "8080"]
EXPOSE 8080
