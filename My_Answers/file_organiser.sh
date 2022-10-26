#!/bin/bash

# Author: Cooper Walter
# Date Created: 2022-10-22

while read -r file; do
    case $file in
        *.jpg | *.jpeg | *.png)
            mkdir images ; mv "$file" images/"$file"
        ;;
        *.doc | *.docx | *.txt | *.pdf)
            mkdir documents ; mv "$file" documents/"$file"
        ;;
        *.xls | *.xlsx | *.csv)
            mkdir spreadsheets ; mv "$file" spreadsheets/"$file"
        ;;
        *.sh)
            mkdir scripts ; mv "$file" scripts/"$file"
        ;;
        *.zip | *.tar | *.tar.gz | *.tar.bz2)
            mkdir archives ; mv "$file" archives/"$file"
        ;;
        *.ppt | *.pptx)
            mkdir presentations ; mv "$file" presentations/"$file"
        ;;
        *.mp3)
            mkdir audio ; mv "$file" audio/"$file"
        ;;
        *.mp4)
            mkdir video ; mv "$file" video/"$file"
        ;;
        *)
            echo "File $file doesn't have an organisable ending"
        ;;
    esac
done < <(ls)