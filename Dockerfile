FROM golang

WORKDIR /togo

COPY go.mod .

COPY go.sum .

RUN go mod vendor

COPY . .

ENV PORT 5050

RUN go build

run ls -l

CMD ["./togo"]