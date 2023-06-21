FROM alpine:3.18

RUN apk add --update --upgrade --no-cache bash bind-tools busybox-extras curl iproute2 iputils jq mtr net-tools openssl perl-net-telnet procps tcpdump tcptraceroute wget python3

CMD ["tail", "-f", "/dev/null"]
