FROM alpine:3.13

ARG KUBECTL_VERSION="1.24.13"

RUN apk add py-pip curl
RUN pip install awscli
RUN curl -L -o /usr/bin/kubectl https://dl.k8s.io/v1.24.13/bin/linux/amd64/kubectl
RUN chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]