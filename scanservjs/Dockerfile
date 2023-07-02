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

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        colord \
        printer-driver-all \
        printer-driver-gutenprint \
        openprinting-ppds \
        hpijs-ppds \
        hp-ppd  \
        hplip \
        printer-driver-brlaser \
        printer-driver-foo2zjs \
        gnupg2 \
        lsb-release

#ADD --chmod=777 run.sh /run.sh
#ENTRYPOINT [ "/run.sh" ]

RUN ["chmod", "+x", "/run.sh"]
EXPOSE 8080

CMD ["/run.sh"]
