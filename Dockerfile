FROM alpine:3.13

ARG KUBECTL_VERSION="1.21.2"

RUN apk add py-pip curl
RUN pip install awscli
RUN curl -L -o /usr/bin/kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/kubectl
RUN chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]