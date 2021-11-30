FROM alpine

RUN apk add --no-cache ca-certificates

RUN wget -O /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 && \
    chmod +x /usr/local/bin/argocd


ENTRYPOINT [ "argocd" ]