FROM docker.io/debian AS base
WORKDIR /srv
RUN apt-get update

FROM base AS ldaputils
RUN apt-get install -y ldap-utils

FROM base AS kerbrute
RUN apt-get install -y golang git
RUN go get github.com/ropnop/kerbrute
ENTRYPOINT ["/root/go/bin/kerbrute"]
