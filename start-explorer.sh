NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="137.184.135.94" PORT="4200" yarn build:"$NETWORK"
EXPLORER_HOST="137.184.135.94" EXPLORER_PORT="4200" pm2 start /home/bridgechain/core-explorer/express-server.js --name explorer
