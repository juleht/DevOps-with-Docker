#################################
# this is dockerfie for backend #
#################################

# Stage 1: Build the backend
FROM golang:1.16-alpine AS builder

## working directory
WORKDIR /usr/src/app

## copy files
COPY material-applications/example-backend .

## environment
ENV PATH="$PATH:/usr/local/go/bin"

## install build-base, build project, and run tests
RUN apk add --no-cache build-base && \
    CGO_ENABLED=0 go build && \
    go test ./...

# Stage 2: Final runtime image
FROM scratch

## working directory
WORKDIR /usr/src/app

## expose port
EXPOSE 8080

## environmental variable
ENV REQUEST_ORIGIN=http://localhost:5000

## copy binary from the builder stage
COPY --from=builder /usr/src/app/server .

## run project
CMD ["./server"]