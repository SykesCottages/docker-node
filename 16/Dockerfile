FROM sykescottages/node:base

ENV NODE_VERSION v16.19.1

RUN curl -L "https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz" > "/tmp/node-$NODE_VERSION-linux-x64.tar.xz" && \
    echo $(sha384sum /tmp/node-$NODE_VERSION-linux-x64.tar.xz) && \
    echo "5d83cc1bca747e7a9a542656c0c3f467b7951adc7bf2668e2f3a794ff809b9becacc94468a50a7af52cefea8277a38d6  /tmp/node-$NODE_VERSION-linux-x64.tar.xz" | sha384sum --check && \
    tar -xf /tmp/node-$NODE_VERSION-linux-x64.tar.xz -C /tmp && \
    mv /tmp/node-$NODE_VERSION-linux-x64/bin/* /usr/local/bin/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/include/* /usr/local/include/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/lib/* /usr/local/lib/. && \
    mv /tmp/node-$NODE_VERSION-linux-x64/share/* /usr/local/share/. && \
    rm -rf /tmp/*
