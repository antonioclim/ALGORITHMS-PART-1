#!/bin/bash
putere() {
    local a=$1
    local b=$2
    local rezultat=1
    for ((i=0; i<b; i++)); do
        rezultat=$((rezultat * a))
    done
    echo "$rezultat"
}
putere 2 5
