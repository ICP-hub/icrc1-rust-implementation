# Please change the below parameters as per your token requirements

PRINCIPAL=$(dfx identity get-principal --identity default)

dfx deploy icrc1-ledger --argument "(variant { Init = record {
  token_symbol = \"TEX\";
  token_name = \"Token example\";
  minting_account = record { owner = principal \"$PRINCIPAL\"  };
  transfer_fee = 10_000;
  metadata = vec {};
  initial_balances = vec {};
  archive_options = record {
    num_blocks_to_archive = 2000;
    trigger_threshold = 1000;
    controller_id = principal \"$PRINCIPAL\";
  };
}})"