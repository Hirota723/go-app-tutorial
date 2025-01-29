FROM golang:1.23.5

WORKDIR /app

COPY src/go.mod .
COPY src/go.sum .
RUN go mod download

COPY src .
CMD ["go", "run", "main.go"]