ARG INFERNET_NODE_VERSION=latest

FROM ritualnetwork/infernet-node:${INFERNET_NODE_VERSION} AS runtime

RUN apt-get update && \
    apt install -y gettext-base && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV STARTING_SUB_ID=162500 \
    REGISTRY=0x3B1554f346DFe5c482Bb4BA31b880c1C18412170 \
    RPC_URL=https://base.blockpi.network/v1/rpc/public

COPY src/entrypoint.sh /app/entrypoint.sh
