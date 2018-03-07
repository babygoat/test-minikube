# $GOPATH is configured at /GO
From golang:1.8-alpine

# Add local package files to the container's workspace
Add . /go/src/

# Build package
Run cd /go/src/ && go build -o server

# Container starts entry point
Entrypoint /go/src/server

Expose 8080
