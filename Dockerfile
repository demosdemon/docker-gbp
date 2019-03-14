FROM debian:stretch

RUN set -eux; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get -qq update; \
    apt-get -qq install --no-install-recommends \
        build-essential \
        devscripts \
        git-buildpackage \
        gnupg2 dirmngr scdaemon \
    ; \
    apt-get -qq autoremove; \
    apt-get -qq clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; \
    mkdir -p /root/.gnupg; \
    chmod 0700 /root/.gnupg;
