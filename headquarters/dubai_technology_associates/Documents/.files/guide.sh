#!/bin/bash
echo "Looking through this many files would take too long, we have found over 1000 sub-directories within this sections of the computer."
echo "We are going to have to utilize another command to find what we are looking for, in this case we will be using the ${hili} find ${norm} command."
echo "This command allows the user to search several directories at once using many different types of filters, in this case we will only need one type of filter,the name filter."
echo "The syntax for the find command is as follows: ${hili}find -name (filter)${norm}"
echo "${bold}We will also have the filter preceeded and proceeded by astericks${norm}, the astericks tell the command to check if the filtered word is either the prefix or the suffix of the file name."
echo "You may need to try a few filters to get some results, some suggestions are: ${bold}clients, employees, and or bank${norm}."
echo "If you find anything go ahead and cd your way to it."
