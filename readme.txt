docker build . -t go-docker-hello:latest
docker run  go-docker-hello /go-docker-hello
docker compose up --build
