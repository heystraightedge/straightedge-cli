$path_to_cli/str -r testnet3.straighted.ge:9944 -s "${mnemonic}//stash" staking bond $controller_b58address $bond $reward_dest
$path_to_cli/str -r testnet3.straighted.ge:9944 -s "${mnemonic}//controller" session setKeys $pubkey1,$pubkey2,$pubkey3
$path_to_cli/str -s "${mnemonic}"//controller staking validate 3 0
