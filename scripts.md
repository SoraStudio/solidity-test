# Remix

docker pull remixproject/remix-ide:latest

docker run -p 8080:80 remixproject/remix-ide:latest

# Remixd

## Install

docker build -t remixd .

## Run

docker run -itd -v /M/Research/BlockChain/solidity-test/src:/app -p 65520:65520 remixd
