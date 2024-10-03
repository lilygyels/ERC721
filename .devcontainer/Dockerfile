FROM node:18
WORKDIR /ipfs
RUN wget https://dist.ipfs.tech/kubo/v0.29.0/kubo_v0.29.0_linux-amd64.tar.gz
RUN tar -xvzf kubo_v0.29.0_linux-amd64.tar.gz
RUN cd kubo && ./install.sh
RUN npm install -g truffle
RUN ipfs init