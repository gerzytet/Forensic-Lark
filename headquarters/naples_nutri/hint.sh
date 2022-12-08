#!/bin/bash
if [ ! -f "$guide_dir/bin/progress.txt" ]
then
    echo "type in vim .bashrc, once inside of vim find the line that contains the command that calls brotten, hover over the line and use the shortcut dd, if in insert mode press the escape key, once the line has been deleted, press the escape key followed by :wq!"
else
    echo "${hili}find -name *brotten* -delete${norm}"
fi