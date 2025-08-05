FROM golang:1.24.5

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

# compila o binário principal a partir de cmd/main.go
RUN go build -o main ./cmd

EXPOSE 8080

CMD ["./main"]
