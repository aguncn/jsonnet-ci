FROM quay.io/coreos/jsonnet-ci:latest

RUN mkdir kube-prometheus \
    && cd kube-prometheus \
    && jb init \
    && jb install github.com/coreos/kube-prometheus/jsonnet/kube-prometheus@release-0.4 \
    && jb update

