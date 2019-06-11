## Utility generating pre-filled eth accounts for a PoA network:

### Usage

`generate_accounts.sh <clique|ibft2> <number of accounts>`

- arg1: `network` can be either `clique` or `ibft2`
- arg2: number of accounts

The output is written to stdout.
A common usage would be to redirect the output to the `genesis.json.template` file corresponding to the PoA network you want to start.
The file `pantheon_<clique|ibft2>/genesis.json.template` is copied to the Docker image upon construction and processed by the `bootnode` to generate `genesis.json`.

### Requirements

- `ethkey` CLI from Parity client

### Notes

Accounts are filled with a default balance of 1 ETH.

