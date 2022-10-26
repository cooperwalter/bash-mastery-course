#!/bin/bash

# Author: Cooper Walter
# Date Created: 2022-10-19

while read line; do
    mkdir "$line";
done < "$1"