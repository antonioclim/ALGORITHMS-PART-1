#!/bin/bash
# Iterativ
suma_iter() {
    local n=$1
    local total=0
    for ((i=1; i<=n; i++)); do
        total=$((total + i))
    done
    echo "$total"
}
suma_iter 5
