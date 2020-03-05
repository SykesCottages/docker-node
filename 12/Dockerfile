FROM sykescottages/node:base

ENV NODE_VERSION v12.16.1

RUN curl -L "https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz" > "/tmp/node-$NODE_VERSION-linux-x64.tar.xz" && \
    echo "de3bd41069499e68256920b779a4ac54df49686a0b269d6bc00c7d12dfd9fe0ed4a77e939b5ac2426314dc9340eea627  /tmp/node-$NODE_VERSION-linux-x64.tar.xz" | sha384sum --check && \
    tar -xf /tmp/node-$NODE_VERSION-linux-x64.tar.xz -C /tmp && \
    mv /tmp/node-$NODE_VERSION-linux-x64/bin/* /usr/local/bin/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/include/* /usr/local/include/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/lib/* /usr/local/lib/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/share/* /usr/local/share/. && \
    rm -rf /tmp/*
