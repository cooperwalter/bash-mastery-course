#!/bin/bash

# Author: Cooper Walter
# Date Created: 2022-10-22

read -p "Which folder do you want to "de-cruft?": " path
read -p "How many days should files be unmodified to be considered "cruft"?: " stale_days

readarray -t files_to_delete < <(find "$path" -maxdepth 1 -type f -mtime $stale_days)
if [ ${#files_to_delete[@]} -gt 0 ]; then
    rm -i "${files_to_delete[@]}"
else
    echo "No files found that haven't been modified for $stale_days days"
fi