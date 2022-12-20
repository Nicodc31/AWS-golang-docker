FROM golang:1.19

LABEL base.name="golang"

# Creating an app directory
WORKDIR /app

# Bundle app dependicies
COPY . .

RUN go build -o main .

# Exposing port 8080 and starting app
EXPOSE 8080
ENTRYPOINT ["./main"]


