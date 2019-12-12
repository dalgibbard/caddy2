FROM golang:alpine
RUN apk update && apk upgrade && apk add git && rm -rf /var/cache/apk/*
ENV GO111MODULE=auto
RUN git clone -b v2 "https://github.com/caddyserver/caddy.git" && cd caddy/cmd/caddy/ && go build && go install
COPY caddy.json /caddy.json

EXPOSE 80 443

ENTRYPOINT ["caddy"]
CMD ["run", "--config", "/caddy.json"]

