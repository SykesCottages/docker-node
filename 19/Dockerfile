FROM sykescottages/node:base

ENV NODE_VERSION v19.0.1

RUN curl -L "https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz" > "/tmp/node-$NODE_VERSION-linux-x64.tar.xz" && \
    echo $(sha384sum /tmp/node-$NODE_VERSION-linux-x64.tar.xz) && \
    echo "b76e66b01db714d91b6c631e5bba7a799e06ff432b915a69614f31194bdd3f97a8c637da9e9e34617d42cb03088c8820  /tmp/node-$NODE_VERSION-linux-x64.tar.xz" | sha384sum --check && \
    tar -xf /tmp/node-$NODE_VERSION-linux-x64.tar.xz -C /tmp && \
    mv /tmp/node-$NODE_VERSION-linux-x64/bin/* /usr/local/bin/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/include/* /usr/local/include/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/lib/* /usr/local/lib/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/share/* /usr/local/share/. && \
    rm -rf /tmp/*
