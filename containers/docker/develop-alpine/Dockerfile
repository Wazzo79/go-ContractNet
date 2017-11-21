FROM alpine:3.5

RUN \
  apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  git clone --depth 1 https://github.com/ContractNet/go-ContractNet && \
  (cd go-ContractNet && make gContractNet) && \
  cp go-ContractNet/build/bin/gContractNet /gContractNet && \
  apk del go git make gcc musl-dev linux-headers && \
  rm -rf /go-ContractNet && rm -rf /var/cache/apk/*

EXPOSE 8580
EXPOSE 30380

ENTRYPOINT ["/gContractNet"]
