FROM sbs20/scanservjs:v3.0.3

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

COPY config.local.js /etc/scanservjs/config.local.js
COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]
EXPOSE 8080
