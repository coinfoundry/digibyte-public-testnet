FROM ubuntu:xenial

ADD https://github.com/digibyte/digibyte/releases/download/v7.17.2/digibyte-7.17.2-x86_64-linux-gnu.tar.gz /tmp/

RUN cd /tmp && tar xvf digibyte*.tar.gz && cp -r /tmp/digibyte*/bin/* /usr/bin && \
    rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 16101
WORKDIR /tmp
ENTRYPOINT digibyted -server -testnet -datadir=/data -printtoconsole -rpcuser=user -rpcpassword=pass -rpcport=16101 -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcssl=0
