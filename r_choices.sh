#!/bin/bash

echo "Welcome to my script!"
echo "Please enter a number to select an option below:"

PS3="Enter option number: "
options=("Exit" "Project Introduction" "File Integrity Check Helper" "Dependency Check Helper" "Credits")

select opt in "${options[@]}"
do
    case $opt in
        "Exit")
            echo "Exiting script..."
            break
            ;;
        "Project Introduction")
            echo "This is a project introduction."
            ;;
        "File Integrity Check Helper")
            echo "This is a file integrity check helper."
            ;;
        "Dependency Check Helper")
            echo "This is a dependency check helper."
            ;;
        "Credits")
            echo "Credits for this script go to [insert your name here]."
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
