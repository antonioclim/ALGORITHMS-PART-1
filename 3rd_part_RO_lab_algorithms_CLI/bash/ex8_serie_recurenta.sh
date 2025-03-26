#!/bin/bash
serie_an() {
    local n=$1
    local a=3
    for ((i=1; i<=n; i++)); do
        a=$((a * 2 + 1))
    done
    echo "$a"
}
serie_an 5
