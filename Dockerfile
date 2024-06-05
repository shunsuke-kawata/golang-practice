FROM golang:1.22-alpine

# ENV ROOT=/go/src/app
# WORKDIR ${ROOT}
COPY . .

RUN go install golang.org/x/tools/cmd/goimports@latest

RUN apk update

EXPOSE 8080
# CMD ["go", "run", "main.go"]