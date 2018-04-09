FROM golang:1.7-alpine

COPY . /go/src/github.com/microservices-demo/user/
WORKDIR /go/src/github.com/microservices-demo/user/

RUN go get -v github.com/Masterminds/glide 
RUN glide install && CGO_ENABLED=0 go build -a -installsuffix cgo -o /user main.go

ENV HATEAOS user
ENV USER_DATABASE users
ENV MONGO_HOST user-db

WORKDIR /
EXPOSE 8080

RUN	chmod +x /user 

CMD ["/user", "-port=8080"]
