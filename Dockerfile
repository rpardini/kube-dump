FROM alpine:3

ARG KUBECTL_VERSION="1.30.6"
ARG TARGETARCH

RUN apk add --update --no-cache bash bind-tools jq yq openssh-client git tar xz gzip bzip2 curl coreutils grep

RUN set  -x && ARCH=$(echo $TARGETARCH) && \
    URL="https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/$ARCH/kubectl" && \
    echo "Downloading for ARCH: $ARCH via URL: $URL" && \
    curl -Lo /usr/bin/kubectl "${URL}" && \
    chmod +x /usr/bin/kubectl

RUN kubectl version --client

COPY ./kube-dump /kube-dump

ENTRYPOINT [ "/kube-dump" ]
