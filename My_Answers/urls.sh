#!/bin/bash

readarray -t urls < "$1"
for url in "${urls[@]}"; do
    echo "Fetching headers for $url"
    filename="$(echo "$url" | cut -d "." -f 2).txt"
    touch "$filename"
    curl --head "$url" > "$filename"
    echo
done