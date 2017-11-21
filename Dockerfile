FROM alpine:3.5

ADD . /go-ContractNet
RUN \
  apk add --update git go make gcc musl-dev linux-headers && \
  (cd go-ContractNet && make gContractNet)                           && \
  cp go-ContractNet/build/bin/gContractNet /gContractNet                     && \
  apk del git go make gcc musl-dev linux-headers          && \
  rm -rf /go-ContractNet && rm -rf /var/cache/apk/*

EXPOSE 8580
EXPOSE 30388

ENTRYPOINT ["/gContractNet"]
