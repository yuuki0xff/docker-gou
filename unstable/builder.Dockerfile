FROM golang:1
ENV GOU_VERSION="unstable"

CMD set -euvx && \
    go get github.com/shingetsu-gou/shingetsu-gou && \
    go build github.com/shingetsu-gou/shingetsu-gou
