FROM alpine:3.5

ADD . /go-ubiq
RUN \
  apk add --update git go make gcc musl-dev linux-headers && \
  (cd go-ubiq && make gContractNet)                           && \
  cp go-ubiq/build/bin/gContractNet /gContractNet                     && \
  apk del git go make gcc musl-dev linux-headers          && \
  rm -rf /go-ubiq && rm -rf /var/cache/apk/*

EXPOSE 8580
EXPOSE 30388

ENTRYPOINT ["/gContractNet"]
