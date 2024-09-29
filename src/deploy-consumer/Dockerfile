FROM node:22 AS runtime

ENV RPC_URL=https://base.blockpi.network/v1/rpc/public \
    REGISTRY=0x3B1554f346DFe5c482Bb4BA31b880c1C18412170 \
    PATH="/root/.foundry/bin:${PATH}"

RUN curl https://raw.githubusercontent.com/foundry-rs/foundry/master/foundryup/install | bash && foundryup

RUN git clone https://github.com/ritual-net/infernet-container-starter app && \
    cd /app/projects/hello-world/contracts && \
    forge update foundry-rs/forge-std ritual-net/infernet-sdk

WORKDIR /app/projects/hello-world/contracts

COPY src ./

RUN forge build script/SayGM.free.s.sol script/SayGM.paid.s.sol

WORKDIR /app/projects/hello-world/contracts/commands

ENTRYPOINT ["sh"]
