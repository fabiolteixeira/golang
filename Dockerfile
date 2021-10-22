FROM golang:alpine3.14

WORKDIR /go/src
RUN mkdir fullcycle
WORKDIR /go/src/fullcycle
RUN go mod init desafio/fullcycle
COPY FullcycleRocks.go /go/src/fullcycle
RUN go build desafio/fullcycle
ENTRYPOINT ["/go/src/fullcycle/fullcycle"] 
