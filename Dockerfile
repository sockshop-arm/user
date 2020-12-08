FROM golang:1.15
EXPOSE 8084
ENV sourcesdir /go/src/github.com/microservices-demo/user/
ENV MONGO_HOST mytestdb:27017
ENV HATEAOS user
ENV USER_DATABASE mongodb

COPY . ${sourcesdir}
RUN apt update
RUN apt install git
RUN go get -v github.com/Masterminds/glide && cd ${sourcesdir} && glide install && go install

ENTRYPOINT user
