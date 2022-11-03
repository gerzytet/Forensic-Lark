#!/bin/bash
if (return 0 2>/dev/null)
then
    true
else
    echo -e "Error: you must use \n\nsource init.sh\n\nto run this script"
    exit 1
fi

export GAME_ROOT_DIR="$(pwd)"
export PATH="$PATH:$GAME_ROOT_DIR"
export GAME_DIR="$GAME_ROOT_DIR/game"
export GUIDE_DATA_DIR="$GAME_ROOT_DIR/guide_data"
cd game
guide