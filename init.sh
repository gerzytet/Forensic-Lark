#!/bin/bash
if (return 0 2>/dev/null)
then
    true
else
    echo -e "Error: you must use \n\nsource init.sh $*\n\nto run this script"
    exit 1
fi

export AGENT_ROOT_DIR="$(pwd)"
export PATH="$PATH:$AGENT_ROOT_DIR"
export AGENT_DIR="$AGENT_ROOT_DIR/agent"
export HQ_DATA_DIR="$AGENT_ROOT_DIR/headquarters"
cd agent
hq
