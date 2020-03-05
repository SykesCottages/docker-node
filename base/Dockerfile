FROM sykescottages/base

RUN apt-get update; \
    apt-get install -y -q \
        python \
        ruby \
        ruby-dev \
        gcc \
        make

RUN apt-get autoremove -y -q && \
    apt-get autoclean -y -q && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint /usr/local/bin/

ENTRYPOINT [ "entrypoint" ]