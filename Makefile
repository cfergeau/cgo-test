.PHONY: all test-amd64 test-arm64

all: test-amd64 test-arm64

test-amd64:
	CGO_ENABLED=1 GOOS=darwin GOARCH=amd64 go build -o $@ .

test-arm64:
	CGO_ENABLED=1 GOOS=darwin GOARCH=arm64 go build -o $@ .
