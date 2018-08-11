FROM alpine:latest

ENV PAGER="less -r"

RUN apk --no-cache add \
      bash \
      less \
      git \
      curl \
      jq \
      groff \
      py-pip \
      python && \
    pip --no-cache-dir install --upgrade \
      pip \
      awscli && \
      apk -v --purge del py-pip && \
      rm /var/cache/apk/*

WORKDIR /root
