# SWEEP Coin

This repo contains all the contracts for SWEEP Coin in Tron Network.

### Set up:
```
npm install -g tronbox
cp sample-env .env
npm install
```

### Compile the contracts:
```
tronbox compile
```

### Deploy:
```
source .env && tronbox migrate --network <NETWORK>
```