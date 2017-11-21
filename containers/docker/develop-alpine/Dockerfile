FROM alpine:3.5

RUN \
  apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  git clone --depth 1 https://github.com/ubiq/go-ubiq && \
  (cd go-ubiq && make gContractNet) && \
  cp go-ubiq/build/bin/gContractNet /gContractNet && \
  apk del go git make gcc musl-dev linux-headers && \
  rm -rf /go-ubiq && rm -rf /var/cache/apk/*

EXPOSE 8580
EXPOSE 30388

ENTRYPOINT ["/gContractNet"]
