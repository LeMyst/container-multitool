FROM alpine:3.23

# Basic
RUN apk add --update --upgrade --no-cache bash bind-tools busybox-extras curl iproute2 iputils jq mtr net-tools openssl perl-net-telnet procps tcpdump tcptraceroute wget python3 py3-pip git

# Azure CLI dependency
RUN apk add --update --upgrade --no-cache gcc musl-dev python3-dev libffi-dev openssl-dev cargo make

# Create python3 virtualenv
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --upgrade azure-cli

CMD ["bash"]
