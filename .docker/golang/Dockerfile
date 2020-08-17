FROM golang:alpine AS builder

WORKDIR /go/src

COPY . .
RUN GOOS=linux go build main.go

ENTRYPOINT ["./main"]


FROM scratch

COPY --from=builder /go/src/main /go/src/main

ENTRYPOINT [ "./go/src/main" ]
