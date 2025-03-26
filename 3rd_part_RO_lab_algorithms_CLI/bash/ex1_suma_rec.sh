#!/bin/bash
suma_rec() {
    local n=$1
    if [ "$n" -eq 0 ]; then
        echo 0
    else
        local prev=$(suma_rec $((n - 1)))
        echo $((n + prev))
    fi
}
suma_rec 5
