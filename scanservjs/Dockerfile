FROM sbs20/scanservjs

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt update \
    && apt install -y jq curl \
    && curl -J -L -o /tmp/bashio.tar.gz \
        "https://github.com/hassio-addons/bashio/archive/v0.14.3.tar.gz" \
    && mkdir /tmp/bashio \
    && tar zxvf \
        /tmp/bashio.tar.gz \
        --strip 1 -C /tmp/bashio \
    && apt remove -y curl \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio

#RUN apt-get install -y --no-install-recommends \
#            libsane \
#            libsane-common \
#            libusb

# As mentioned in end of section https://github.com/sbs20/scanservjs/blob/master/docs/docker.md#accessing-hardware
COPY brscan4-0.4.11-1.amd64.deb "$APP_DIR/brscan4-0.4.11-1.amd64.deb"
RUN apt install -yq "$APP_DIR/brscan4-0.4.11-1.amd64.deb"
# RUN brsaneconfig4 -a name=ADS-2600W model=ADS-2600W nodename=10.0.100.30

#ADD --chmod=777 run.sh /run.sh
#ENTRYPOINT [ "/run.sh" ]

RUN ["chmod", "+x", "/run.sh"]
EXPOSE 8080

CMD ["/run.sh"]
