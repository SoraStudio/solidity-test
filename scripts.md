# Install

docker build -t remixd .

# Run

docker run -itd -v /M/Research/BlockChain/solidity-test/src:/app -p 65520:65520 remixd
