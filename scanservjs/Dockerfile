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

# As mentioned in end of section https://github.com/sbs20/scanservjs/blob/master/docs/docker.md#accessing-hardware
COPY brscan4-0.4.11-1.amd64.deb "/tmp/brscan4-0.4.11-1.amd64.deb"
RUN apt install -yq "/tmp/brscan4-0.4.11-1.amd64.deb"

RUN echo "brother4" > /etc/sane.d/dll.conf

RUN ["chmod", "+x", "/run.sh"]
EXPOSE 8080

CMD ["/run.sh"]
