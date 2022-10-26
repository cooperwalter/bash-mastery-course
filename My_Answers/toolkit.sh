#!/bin/bash

# Author: Cooper Walter
# Date Created: 2022-10-22

PS3="Please select a script to run: "
select script in "cruft_remover.sh" "file_organiser.sh"; do
    bash "$script"
    break
done