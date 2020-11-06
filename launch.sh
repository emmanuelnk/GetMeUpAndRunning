#!/bin/bash

# unset
# unset cat_descriptions
# unset gmu_packagenames
# unset gmu_descriptions
# unset gmu_categories
# unset categories_arr

# imports
. util/ui_select_widget.sh
. descriptions.sh
. util/checks.sh

## declare an array variable
declare -a categories_arr=("utilities" "desktop" "development")

## now loop through the above array
for category in "${categories_arr[@]}"
do
   # --------- START-----------------

    PRESELECTED=""
    declare -i avail_count=0
    declare -A cat_descriptions

    # check if any packages are already installed 
    for key in "${!gmu_packagenames[@]}"; do 
        if [[ ${gmu_categories[$key]} == $category ]];then

            check_is_installed ${gmu_packagenames[$key]} $key

            if [[ ${gmu_descriptions[$key]} != *"[INSTALLED]"* ]]; then
                PRESELECTED="${PRESELECTED} $key"
            fi
            cat_descriptions[$key]=${gmu_descriptions[$key]}
            avail_count=$((avail_count + 1))
        fi
    done

    # if nothing to install, move to the next category
    if (( avail_count < 1 )); then
        echo -e "\nnothing to install in $category\n"
        continue
    fi

    # finally the menu
    echo -e "\n\n\e[4mSELECT THE [$category] PROGRAMS YOU WOULD LIKE TO INSTALL\e[24m\n\nuse SPACEBAR to '▣'select or '□'unselect. When you're done, click ENTER or press ESC to cancel.\n"

    ui_widget_select -c -m -k "${!cat_descriptions[@]}" -s $PRESELECTED -i "${cat_descriptions[@]}"
 
    if [[ ${UI_WIDGET_RC[@]} ]]; then
        read -p "The above items have been selected for installation. Continue? Type [Y/y] to continue: " -n 1 -r
    else
        read -p "No items in category [$category] have been selected. Press any key to continue to the next category or ESC to exit the program" -n 1 -r
        if [[ $REPLY =~ $'\e' ]];then
            exit 0
        else
            unset cat_descriptions
            continue
        fi
    fi

    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Continuing installation of selected item(s)"
        
        for key in "${UI_WIDGET_RC[@]}"; do 
            # import the script with the routine to execute. routines with .ub come from here
            . "categories/$category/$key.sh"
            
            # one more check if you want to continue installing something that has already been installed
            DESCRIP="${cat_descriptions[$key]}"
            if [[ $DESCRIP == *"[INSTALLED]"* ]] && continue_install "$DESCRIP"; then 
                echo -e "\nskipping install of $DESCRIP\n"; continue;
            fi

            #  execute the .ub routine for ubuntu programs
            "$key.ub"
            unset cat_descriptions
        done
    else
        echo "You need to type Y or y to continue. Exiting."
        unset cat_descriptions
        continue
    fi

    # --------- END-----------------
done






