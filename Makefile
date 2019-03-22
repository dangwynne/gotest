GOFILES = $(shell find . -name '*.go')

default: build

workdir:
	mkdir -p workdir

build: workdir/gotest

build-native: $(GOFILES)
	go build -o workdir/native-gotest .

workdir/gotest: $(GOFILES)
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o workdir/gotest .