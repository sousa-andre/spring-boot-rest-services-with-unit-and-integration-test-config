FROM alpine:3.17.1
WORKDIR /opt/scripts
COPY scripts .
RUN chmod +x *
RUN apk update
RUN apk add git
RUN apk add tar
RUN apk add gzip
RUN wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv5.0.0/kustomize_v5.0.0_linux_arm64.tar.gz -O kustomize.tar.gz && \
    tar -xzvf kustomize.tar.gz && \
    mv kustomize /usr/bin/kustomize
CMD ./update-version.sh