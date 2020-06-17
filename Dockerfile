FROM golang:1.14 as build

COPY ./ /go/src/github.com/meyskens/tls-ping-pong

WORKDIR /go/src/github.com/meyskens/tls-ping-pong

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o pingpong ./

FROM alpine:3.11

COPY --from=build /go/src/github.com/meyskens/tls-ping-pong/pingpong /usr/local/bin/

ENTRYPOINT /usr/local/bin/pingpong
