FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g http-server
#RUN mkdir /app
#COPY index.html / 
#RUN chmod +x /index.html
HEALTHCHECK CMD curl http://localhost:8080 || exit 1
CMD ["http-server"]
EXPOSE 8080
