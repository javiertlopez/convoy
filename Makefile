all: test

dependencies:
	go get -v -t -d ./...

build:
	go build -v ./...

fmt:
	go fmt ./...

test:
	go test -v ./...

coverage:
	go test -v ./... -race -coverprofile=coverage.xml -covermode=atomic

.PHONY: all dependencies build fmt test coverage