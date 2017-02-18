FROM debian:stable-slim
EXPOSE 8000
VOLUME /srv
WORKDIR /srv
ENV GOSU_VERSION="1.10" \
    GOU_VERSION="v0.2.7"

COPY entrypoint /opt/
COPY config /opt/gou/default_config
ADD https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64 /opt/gosu
ADD https://github.com/shingetsu-gou/shingetsu-gou/releases/download/${GOU_VERSION}/shingetsu-gou_${GOU_VERSION}_linux_amd64.gz /opt/gou/
RUN gzip -d --stdout /opt/gou/shingetsu-gou_${GOU_VERSION}_linux_amd64.gz >/opt/gou/shingetsu-gou && \
    chmod +x /opt/gosu /opt/gou/shingetsu-gou
CMD ["/opt/entrypoint"]
