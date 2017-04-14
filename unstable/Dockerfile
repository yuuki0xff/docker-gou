FROM debian:stable-slim
EXPOSE 8000
VOLUME /srv
WORKDIR /srv
ENV GOSU_VERSION="1.10" \
    GOU_VERSION="unstable" \
    BUILD_DIR=".build/unstable"

COPY entrypoint /opt/
COPY config /opt/gou/default_config
ADD https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64 /opt/gosu
ADD ${BUILD_DIR}/shingetsu-gou /opt/gou/
RUN chmod +x /opt/gosu /opt/gou/shingetsu-gou
CMD ["/opt/entrypoint"]
