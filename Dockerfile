FROM golang:alpine

WORKDIR /build

COPY go.mod .
#COPY go.sum .
RUN go mod download


COPY . .

RUN go build -o server .

WORKDIR /dist

RUN cp /build/server .

EXPOSE 8090

CMD [ "/dist/server" ]