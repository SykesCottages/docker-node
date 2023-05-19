FROM sykescottages/node:base

ENV NODE_VERSION v20.2.0

RUN curl -L "https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz" > "/tmp/node-$NODE_VERSION-linux-x64.tar.xz" && \
    echo $(sha384sum /tmp/node-$NODE_VERSION-linux-x64.tar.xz) && \
    echo "29fd1c793c209bb9f5d18d135487b3ba7dea1409e8c7585befe699eb4fccb22e91b6df816ee52ebde7e80cfee7293638  /tmp/node-$NODE_VERSION-linux-x64.tar.xz" | sha384sum --check && \
    tar -xf /tmp/node-$NODE_VERSION-linux-x64.tar.xz -C /tmp && \
    mv /tmp/node-$NODE_VERSION-linux-x64/bin/* /usr/local/bin/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/include/* /usr/local/include/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/lib/* /usr/local/lib/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/share/* /usr/local/share/. && \
    rm -rf /tmp/*
