FROM alpine
WORKDIR /app
COPY conf.sh /app/
RUN apk update && apk add nano && apk add git
RUN apk add --update openssh && rm -rf /tmp/* /var/cache/apk/* && apk add openssh-keygen
RUN apk add bash
