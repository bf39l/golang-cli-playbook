FROM golang:1.14.0

ENV CGO_ENABLED 0

WORKDIR /src/app

RUN addgroup --system projects && adduser --system projects --ingroup projects

RUN chown -R projects:projects /src/app

USER projects

COPY . .

ENV GOPATH="$HOME/go"
ENV PATH="$PATH:$GOPATH/bin"
RUN go install -v ./...
RUN go install golang.org/x/tools/cmd/goimports@latest