#!/bin/bash

consensus=$1
nb_accounts=$2

cd $(dirname $(readlink -f $0))

cat "./${consensus}_header.txt"

i=0
while [[ $i -lt $nb_accounts ]]; do
  new_account=$(ethkey generate random | awk '
    $1=="secret:" {sub(/[^:]*:[[:space:]]*/,""); secret = $0}
    $1=="address:" {sub(/[^:]*:[[:space:]]*/,""); address = $0}
    END {print secret, address}
')
  address=$(echo $new_account | cut -d ' ' -f2)
  private=$(echo $new_account | cut -d ' ' -f1)

  cat << EOF
    "$address": {
      "privateKey": "$private",
      "comment": "Test account $i",
      "balance": "1000000000000000000"
    },
EOF

  i=$(($i+1))
done | sed -e '$d'

cat "./${consensus}_footer.txt"

