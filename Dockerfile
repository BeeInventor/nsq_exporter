FROM golang:1.7-alpine

EXPOSE 9117

ENV  GOPATH /go
ENV APPPATH $GOPATH/src/github.com/beeinventor/nsq_exporter
COPY . $APPPATH
RUN apk add --update -t build-deps git \
    && cd $APPPATH && go get -d && go build -o /nsq_exporter \
    && apk del --purge build-deps && rm -rf $GOPATH

ENTRYPOINT ["/nsq_exporter"]
