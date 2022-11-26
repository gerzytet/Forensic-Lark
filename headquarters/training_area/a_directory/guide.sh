#!/bin/bash
hili=$(tput setab 1)
bold=$(tput bold)
norm=$(tput sgr0)

echo "Well done you have entered a new directory, this will be your main form of navigation."
echo "Next we will teach you about the ${hili}cat${norm} command, the ${hili}cat${norm} command allows you to peer into files."
echo "Try using ${hili}cat${norm} on the file within this directory,${bold} type cat proceeded by the name of the file you wish to look within.${norm}"
echo "1" > "$guide_dir/progress.txt"
