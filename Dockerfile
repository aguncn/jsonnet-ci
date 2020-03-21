FROM golang:1.14.1-alpine3.11

RUN apk update && apk upgrade \
    && apk add --no-cache git bash python \
    && go get github.com/google/go-jsonnet/cmd/jsonnet \
    && go get github.com/brancz/gojsontoyaml \
    && go get github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb \
    && mkdir kube-prometheus \
    && cd kube-prometheus \
    && jb init \
    && jb install github.com/coreos/kube-prometheus/jsonnet/kube-prometheus@release-0.4 \
    && jb update

