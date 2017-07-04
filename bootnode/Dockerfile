FROM golang

RUN apt-get install git make gcc g++

RUN mkdir -p /root/.ssh && \
    ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts && \
    ssh-keygen -t rsa -f /root/.ssh/id_rsa -C "golang.ubuntu"

RUN cd /tmp && \
    git clone https://github.com/ethereum/go-ethereum.git

RUN cd /tmp/go-ethereum && make all

RUN cp /tmp/go-ethereum/build/bin/bootnode /usr/local/bin

# ETH bootnode setup
RUN mkdir -p /opt/ethereum
COPY ./boot.key /opt/ethereum

CMD ["bootnode", "--nodekey", "/opt/ethereum/boot.key"]
