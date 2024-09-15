#!/bin/bash
SCRIPT_DIR=$(dirname "$(realpath "$0")")
source $SCRIPT_DIR/lib.sh

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <nombre1> <nombre2>"
  exit 1
fi

result=$(add "$1" "$2")

# Afficher le résultat
echo "$1 + $2 = $result"
