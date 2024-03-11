FROM alpine

RUN apk --update add openssl

WORKDIR /certs

CMD mkdir /usr/local/bin

COPY generate-certs /usr/local/bin/generate-certs

CMD /usr/local/bin/generate-certs

VOLUME /certs
