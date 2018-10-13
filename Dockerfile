FROM alpine:latest
RUN apk add nodejs nodejs-npm
RUN npm install -g npm@4
WORKDIR /
RUN mkdir opt
WORKDIR /opt
RUN mkdir iobroker
RUN chmod +x iobroker
WORKDIR /opt/iobroker
RUN npm install iobroker --unsafe-perm
RUN ./iobroker start
