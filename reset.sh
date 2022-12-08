resetProgress() {
    find headquarters -name progress.txt -delete
    for i in headquarters/notebook/unlocked/*
    do
        mv $i ${i/unlocked/pages}
    done
    hqunlock
}

hqunlock() {
    find . -name hqlock -delete
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

if [ $# -eq 0 ]
then
    echo "Usage: "
    echo "reset.sh resetall - reset everything"
    echo "reset.sh resetprogress - reset progress"
    echo "reset.sh reset - reset files"
    exit
fi

if [ $# -ge 2 ]
then
    echo "Too many arguments.  Expected 1 argument."
fi

if [ $# -eq 1 ]
then
    case $1 in
        reset)
            echo "This will reset all files in the investigation files in the game to their initial state.  This command will keep some progress intact, although any commands you used to modify files in the game will need to be repeated"
            echo "If you would like to wipe out all progress as well, use \"./reset.sh resetall\""
            read -p "Really reset? [y/n]: " answer
            if [ "$answer" = "y" ]
            then 
                echo "Resetting..."
                resetAgent
            else
                echo "Not resetting."
            fi
        ;;
        resetall)
            echo "This will reset all files in the investigation files in the game to their initial state, as well as all progress."
            echo "If you would like to attempt to keep progress, use use \"./reset.sh reset\""
            read -p "Really reset? [y/n]: " answer
            if [ "$answer" = "y" ]
            then 
                echo "Resetting..."
                resetAgent
                resetProgress
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
        *)
            echo "Invalid argument: $1"
            echo "Usage: "
            echo "reset.sh resetall - reset everything"
            echo "reset.sh resetprogress - reset progress"
            echo "reset.sh reset - reset files"
        ;;
    esac
fi