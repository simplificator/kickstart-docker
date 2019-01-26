FROM williamyeh/ansible:alpine3

RUN apk add --no-cache git

RUN mkdir -p ~/.ssh && ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
