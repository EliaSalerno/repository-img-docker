FROM alpine
WORKDIR /app
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN python3 -m pip install flask && python3 -m pip install requests
