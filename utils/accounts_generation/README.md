## Utility generating pre-filled eth accounts for a PoA network:

### Usage

`generate_accounts.sh <clique|ibft2> <number of accounts>`

- arg1: `network` can be either `clique` or `ibft2`
- arg2: number of accounts

Output written to stdout. A common usage would be to redirect the output to the `genesis.json.template` file corresponding to the PoA network you want to start.

### Requirements

- `ethkey` CLI from Parity client

### Misc

Accounts filled with default balance 90000000000000000000000 wei.

