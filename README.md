# straightedge-cli

The straightedge CLI easily allows you to interact with a local or remote Straightedge node or any general substrate node. The api requires you to create a `.env` file with your keypair information, which will be described below.

## Configuration
Create a `.env` file with the following information:
```
MNEMONIC_PHRASE=...
DERIVATION_PATH=...
```
Examples of some values are:
```
MNEMONIC_PHRASE="bottom drive obey lake curtain smoke basket hold race lonely fit walk"
DERIVATION_PATH=//Alice
```

## Build
1. Requires: typescript version 3.2 or later, node version 12.3 or later
2. Clone the git repo.
3. Build by running `tsc` in the cloned repo.
4. Run with `./bin/str`.

## Usage
1. Install the package with `yarn` or `npm`
2. If you run into errors, run `tsc` in the repo to compile the typescript.
3. If you want to send transactions, have the hex format of a key ready.
4. Call `str <module> <func> [...args]` with the desired module function and args.

## Options
```

Options:
  -V, --version           output the version number
  -s, --seed <key>        Public/private keypair seed
  -r, --remoteNode <url>  Remote node url (default: "localhost:9944").
  -T, --types             Print types instead of performing action.
  -t, --tail              Tail output rather than exiting immediately.
  -h, --help              output usage information
```

## Examples
- Transfering tokens from one's balance
```
str balances transfer 5FmE1Adpwp1bT1oY95w59RiSPVu9QwzBGjKsE2hxemD2AFs8 1000
```

- Fetching an account balance from the Straightedge Testnet
```
str -r testnode.straighted.ge balances freeBalance 5FmE1Adpwp1bT1oY95w59RiSPVu9QwzBGjKsE2hxemD2AFs8
```

- Registering an identity
```
str identity register github drewstone
```
