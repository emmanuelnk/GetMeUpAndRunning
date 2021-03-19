#!/bin/bash

# arrays
declare -A gmu_packagenames # apt package names of programs
declare -A gmu_descriptions # descriptions of programs
declare -A gmu_categories   # category of routine
declare -a categories_arr=("setup" "utilities" "desktop" "development" "customization")

for directory in "${!categories_arr[@]}"; do 
    for file in "categories/${categories_arr[$directory]}"/*; do
        . "$file"

        gmu_packagenames[$script_name]=$package_name  
        gmu_descriptions[$script_name]=$script_name 
        gmu_categories[$script_name]="${categories_arr[$directory]}"
    done
done