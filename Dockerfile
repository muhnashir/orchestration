FROM golang:alpine

RUN apk update && apk add git

RUN echo "Value ENV PORT ${PORT}"

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o binary

ENTRYPOINT ["./binary"]