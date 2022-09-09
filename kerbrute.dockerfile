FROM docker.io/debian
RUN apt-get update && apt-get install -y golang git
RUN go get github.com/ropnop/kerbrute
WORKDIR /srv
ENTRYPOINT ["/root/go/bin/kerbrute"]
