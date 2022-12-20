FROM golang:1.19

LABEL base.name="golang"

WORKDIR /app

COPY . .

RUN go build -o main .

EXPOSE 8080

ENTRYPOINT ["./main"]


