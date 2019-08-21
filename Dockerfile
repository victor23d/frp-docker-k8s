FROM golang:1.12-alpine
RUN apk update && apk add git make
RUN mkdir -p /go/src/github.com/fatedier \
        && cd /go/src/github.com/fatedier \
        && git clone https://github.com/fatedier/frp \
        && cd frp \
        && make

FROM alpine:latest
EXPOSE 7000
WORKDIR /app
ENV PATH=$PATH:/app
COPY --from=0 /go/src/github.com/fatedier/frp/bin/frp* /app/
# CMD
