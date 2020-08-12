#!/bin/bash

. bettersh/utils/ui_select_widget.sh

# func_name="someprog"

# someprog() {	
#     echo "someprog ran successfully "
# }

# $func_name

echo -e "\n\n\e[4mSELECT THE PROGRAMS YOU WOULD LIKE TO INSTALL\e[24m\n\nuse SPACEBAR to '▣'select or '□'unselect. When you're done,click ENTER or press ESC to cancel.\n"


ui_widget_select -l -m -k "${!options2[@]}" -s $PRESELECTED -i "${options2[@]}"

echo "Return code: $?"
echo -e "\nitem(s) selected for install:\n"
printf '%s\n' "${UI_WIDGET_RC[@]}"
echo -e "\n"

read -p "install these items? Type [Y/y] to continue" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "continuing then..."
else
    echo "need to type Y or y to continue. exiting now"
fi
