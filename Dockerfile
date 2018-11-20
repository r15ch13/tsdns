FROM teamspeak:latest

LABEL org.label-schema.maintainer="Richard Kuhnt <r15ch13+git@gmail.com>" \
      org.label-schema.description="tsdns container based on offical teamspeak image" \
      org.label-schema.schema-version="1.0.0-rc1"

RUN set -eux; \
    mkdir -p /var/run/tsdns; \
    cp /opt/ts3server/tsdns/tsdns_settings.ini.sample /var/run/tsdns; \
    cp /opt/ts3server/tsdns/README /var/run/tsdns; \
    cp /opt/ts3server/tsdns/USAGE /var/run/tsdns;

VOLUME /var/run/tsdns/
WORKDIR /var/run/tsdns/

EXPOSE 41144/tcp

CMD [ "/opt/ts3server/tsdns/tsdnsserver" ]
