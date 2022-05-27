FROM golang:1-alpine AS build

ARG VERSION="1.9.3"
ARG CHECKSUM="25e607cb39261050513057534b8d2f33bf55aeb18262218bc9396510fa8958d4"

ADD https://github.com/coredns/coredns/archive/v$VERSION.tar.gz /tmp/coredns.tar.gz

RUN [ "$(sha256sum /tmp/coredns.tar.gz | awk '{print $1}')" = "$CHECKSUM" ] && \
    apk add ca-certificates make && \
    tar -C /tmp -xf /tmp/coredns.tar.gz && \
    mkdir -p /go/src/github.com/coredns && \
    mv /tmp/coredns-$VERSION /go/src/github.com/coredns/coredns && \
    cd /go/src/github.com/coredns/coredns && \
      make

RUN mkdir -p /rootfs/bin && \
      cp /go/src/github.com/coredns/coredns/coredns /rootfs/bin/ && \
    mkdir -p /rootfs/etc && \
      echo "nogroup:*:10000:nobody" > /rootfs/etc/group && \
      echo "nobody:*:10000:10000:::" > /rootfs/etc/passwd && \
    mkdir -p /rootfs/etc/ssl/certs && \
      cp /etc/ssl/certs/ca-certificates.crt /rootfs/etc/ssl/certs/


FROM scratch

COPY --from=build --chown=10000:10000 /rootfs /

USER 10000:10000
ENTRYPOINT ["/bin/coredns"]
