#!/bin/bash

hqlock ..
echo "Well done you have entered a new directory, this will be your main form of navigation."
echo "Next we will teach you about the ${hili}cat${norm} command, the ${hili}cat${norm} command allows you to view files."
echo "Try using ${hili}cat${norm} on the file within this directory,${bold} type cat proceeded by the name of the file you wish to look within.${norm}"
echo "1" > "$guide_dir/progress.txt"
    #unlock_notebook <script name> <display name>
    unlock_notebook cat cat
    unlock_notebook cd cd
