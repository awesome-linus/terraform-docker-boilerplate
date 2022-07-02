FROM hashicorp/terraform:0.11.8

RUN mkdir -p /app/my-terraform
RUN apk add --no-cache \
        python3 \
        py3-pip \
        bash \
        jq \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
        awscli \
    && rm -rf /var/cache/apk/*

WORKDIR /app/my-terraform

ENTRYPOINT ["/bin/sh", "-c", "while true; do echo hello terraform; sleep 1; done"]
