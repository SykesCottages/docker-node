FROM sykescottages/base:ubuntu-22-04

RUN apt-get update; \
    apt-get install -y -q \
        python3 \
        ruby \
        ruby-dev \
        gcc \
        make

RUN apt-get autoremove -y -q && \
    apt-get autoclean -y -q && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint /usr/local/bin/
COPY getnode /usr/local/bin/

ENTRYPOINT [ "entrypoint" ]