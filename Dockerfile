FROM alpine:3.18

# Basic
RUN apk add --update --upgrade --no-cache bash bind-tools busybox-extras curl iproute2 iputils jq mtr net-tools openssl perl-net-telnet procps tcpdump tcptraceroute wget python3 git

# Azure CLI
RUN apk add --update --upgrade --no-cache py3-pip gcc musl-dev python3-dev libffi-dev openssl-dev cargo make && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --upgrade azure-cli

CMD ["bash"]
