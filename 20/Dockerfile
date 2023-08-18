FROM sykescottages/node:base

ENV NODE_VERSION v20.5.1

RUN curl -L "https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz" > "/tmp/node-$NODE_VERSION-linux-x64.tar.xz" && \
    echo $(sha384sum /tmp/node-$NODE_VERSION-linux-x64.tar.xz) && \
    echo "34044fe792a3d54a284d6aef4e966b3ee57d1760085554ecdf07e3323c2043a1e173c80a542b306a7a54a2de9e73161a  /tmp/node-$NODE_VERSION-linux-x64.tar.xz" | sha384sum --check && \
    tar -xf /tmp/node-$NODE_VERSION-linux-x64.tar.xz -C /tmp && \
    mv /tmp/node-$NODE_VERSION-linux-x64/bin/* /usr/local/bin/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/include/* /usr/local/include/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/lib/* /usr/local/lib/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/share/* /usr/local/share/. && \
    rm -rf /tmp/*
