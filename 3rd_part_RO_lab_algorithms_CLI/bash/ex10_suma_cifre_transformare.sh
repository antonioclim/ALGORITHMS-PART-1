#!/bin/bash
sum_digits_iter() {
    local n=$1
    local total=0
    while [ "$n" -gt 0 ]; do
        total=$((total + n % 10))
        n=$((n / 10))
    done
    echo "$total"
}
sum_digits_iter 4321
