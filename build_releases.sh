#!/bin/sh
[ -e hello.exe ] && rm hello.exe
[ -e hello-darwin ] && rm hello-darwin
[ -e hello-linux ] && rm hello-linux

GOARCH=amd64 GOOS=windows go build -o hello.exe hello.go
GOARCH=amd64 GOOS=darwin go build -o hello-darwin hello.go
GOARCH=amd64 GOOS=linux go build -o hello-linux hello.go

[ -e hello_linux_amd64.zip ] && rm hello_linux_amd64.zip
[ -e hello_darwin_amd64.zip ] && rm hello_darwin_amd64.zip
[ -e hello_windows_amd64.zip ] && rm hello_windows_amd64.zip

zip hello_linux_amd64.zip hello-linux
zip hello_darwin_amd64.zip hello-darwin
zip hello_windows_amd64.zip hello.exe
