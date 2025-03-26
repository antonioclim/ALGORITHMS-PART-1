#!/bin/bash
climb_stairs() {
    local n=$1
    declare -a ways
    ways[0]=1
    ways[1]=1
    ways[2]=2
    for ((i=3; i<=n; i++)); do
        ways[i]=$((ways[i-1] + ways[i-2] + ways[i-3]))
    done
    echo "${ways[n]}"
}
climb_stairs 4
