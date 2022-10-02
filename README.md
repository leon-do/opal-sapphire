# Opal.cash

A crypto tumbler for ROSE tokens on Sapphire Network

## Installation & Deployment

`npm install`

`cp .env.example .env`

`vi .env`

`npm run migrate`

## Deployment

```
opal-sapphire > npm run migrate

> opal-sapphire@1.0.0 migrate
> truffle migrate --network sapphire


Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Starting migrations...
======================
> Network name:    'sapphire'
> Network id:      23295
> Block gas limit: 30000000 (0x1c9c380)


01_deploy_contract.js
=====================

   Deploying 'Opal'
   ----------------
   > transaction hash:    0xc7fc2c530587dec41d2d3e36eaccf61c310e2eda7e668856eb3f5c148eebbbd7
   > Blocks: 1            Seconds: 8
   > contract address:    0xDF2722D75c379e1FD37628A2D8ded14842AeD961
   > block number:        5213
   > block timestamp:     1664684233
   > account:             0xe9EB72519D543a0D080450582235ee84c757FE95
   > balance:             9.9498016
   > gas used:            454374 (0x6eee6)
   > gas price:           100 gwei
   > value sent:          0 ETH
   > total cost:          0.0454374 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0454374 ETH

Summary
=======
> Total deployments:   1
> Final cost:          0.0454374 ETH
```