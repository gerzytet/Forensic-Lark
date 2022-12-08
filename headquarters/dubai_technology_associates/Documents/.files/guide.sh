#!/bin/bash
echo "Looking through this many files would take too long, we have found over 1000 sub-directories within this section of the computer."
echo "We are going to have to utilize another command to find what we are looking for, in this case we will be using the ${hili} find ${norm} command."
echo "This command allows the user to search several directories at once using many different types of filters, in this case we will only need one type of filter: the name filter."
echo "The syntax for the find command is as follows: ${hili}find -name (filter)${norm}"
echo "The filter can be any file name, but we need find to do a broader search than a specific file name.  Instead, we want to search for a keyword within a file a name."
echo "To do this, we need to use a ${bold}*${norm} character, which is a wildcard that matches any number of characters"
echo "For example ${hili}*database*${norm} will match any file name with the word 'database' in it."
echo "You may need to try a few filters to get some results, some suggestions are: ${bold}clients, employees, and or bank${norm}."
echo "If you find anything go ahead and cd your way to it."
unlock_notebook find find
