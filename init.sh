#!/bin/bash
set -e

if (return 0 2>/dev/null)
then
    true
else
    echo -e "Error: you must use \n\nsource init.sh $*\n\nto run this script"
    exit 1
fi

resetProgress() {
find headquarters -name progress.txt -delete
}

resetAgent() {
if [ ! -f "agent.bak" ]
then
    echo "agent directory backup not found!"
    echo "Not resetting"
    return 1
fi
rm -rf agent
tar -xf agent.bak
}

if [ $# -eq 1 ]
then
    case $1 in
        reset)
            echo "This will reset all files in the investigation files in the game to their initial state.  This command will keep some progress intact, although any commands you used to modify files in the game will need to be repeated"
            echo "If you would like to wipe out all progress as well, use \"source init.sh resetall\""
            read -p "Really reset? [y/n]: " answer
            if [ "$answer" = "y" ]
            then 
                echo "Resetting..."
            else
                echo "Not resetting."
            fi
        ;;
        resetall)
            echo "This will reset all files in the investigation files in the game to their initial state, as well as all progress."
            echo "If you would like to attempt to keep progress, use use \"source init.sh reset\""
            read -p "Really reset? [y/n]: " answer
            if [ "$answer" = "y" ]
            then 
                echo "Resetting..."
            else
                echo "Not resetting."
            fi
        ;;
        resetprogress)
            echo "This will reset all progress, but not any of the agent files.  This is probably not what you want unless you are the developer."
            read -p "Really reset? [y/n]: " answer
            if [ "$answer" = "y" ]
            then
                echo "Resetting..."
                resetProgress
            else
                echo "Not resetting."
            fi
        ;;
    esac
else
    export AGENT_ROOT_DIR="$(pwd)"
    export PATH="$PATH:$AGENT_ROOT_DIR"
    export AGENT_DIR="$AGENT_ROOT_DIR/agent"
    export HQ_DATA_DIR="$AGENT_ROOT_DIR/headquarters"
    tar -cf agent.bak agent
    cd agent
    hq
fi


