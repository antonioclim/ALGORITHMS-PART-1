#!/bin/bash
grid_paths() {
    local m=$1
    local n=$2
    declare -A grid
    for ((i=0; i<=m; i++)); do
        for ((j=0; j<=n; j++)); do
            if (( i == 0 || j == 0 )); then
                grid[$i,$j]=1
            else
                grid[$i,$j]=$(( grid[$((i-1)),$j] + grid[$i,$((j-1))] ))
            fi
        done
    done
    echo "${grid[$m,$n]}"
}
grid_paths 2 2
