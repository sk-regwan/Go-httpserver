FROM golang:latest

RUN mkdir /app

ADD . /app

WORKDIR /app

COPY go.mod .

COPY go.sum .

RUN go mod download

COPY . .

ENV PORT 8080

RUN go build -o main

CMD ["./app/main"]

