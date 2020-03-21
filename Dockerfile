FROM quay.io/coreos/jsonnet-ci:latest

RUN mkdir kube-prometheus \
    && cd kube-prometheus \
    && jb init \
    && jb install github.com/coreos/kube-prometheus@master \
    && jb update

