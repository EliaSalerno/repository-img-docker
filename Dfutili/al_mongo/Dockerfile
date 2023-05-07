FROM alpine
WORKDIR /app
env http_proxy="http://172.17.0.20:3128"
env https_proxy="http://172.17.0.20:3128"

RUN apk update && apk add openrc
RUN apk --no-cache --update add openjdk11 && apk --no-cache add mongodb

CMD ["mkdir -p /data/db"]
CMD ["chown 'root' /data/db"]

CMD ["rc-update add mongodb default"]
CMD ["rc-service mongodb start"]

CMD ["/bin/bash"]
