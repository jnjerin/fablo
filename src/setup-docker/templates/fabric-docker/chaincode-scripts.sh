#!/usr/bin/env bash

# Function to perform chaincode invoke
chaincodeInvoke() {
  local channel="$1"
  local chaincode="$2"
  local peers="$3"
  local command="$4"
  local transient="$5"

# Validate the input parameters
  if [[ -z $channel || -z $chaincode || -z $peers || -z $command || -z $transient ]]; then
    echo "Error: Insufficient arguments provided."
    echo "Usage: fablo chaincode invoke <channel_name> <chaincode_name> <peers_domains_comma_separated> <command> <transient>"
    return 1
  fi

  echo "-> Chaincode invoke:"
  echo "Channel: $channel"
  echo "Chaincode: $chaincode"
  echo "Peers: $peers"
  echo "Command: $command"
  echo "Transient: $transient"

# Execute the chaincode invoke command
  ./fablo.sh chaincode invoke "$channel" "$chaincode" "$peers" "$command" "$transient"
  
  echo "Executing chaincode invoke command..."
}

