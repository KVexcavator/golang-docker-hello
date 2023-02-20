FROM golang:latest as builder
RUN mkdir /app
WORKDIR /app
COPY . ./

RUN CGO_ENABLED=0 GOOS=linux go build -mod=vendor -a -installsuffix cgo -ldflags "-X main.version=$version" -o go-docker-hello -v ./cmd/progect/go_docker_hello.go

FROM alpine
ENV ENV_EXAMPLE=123docker123
COPY --from=builder /app/go-docker-hello /
