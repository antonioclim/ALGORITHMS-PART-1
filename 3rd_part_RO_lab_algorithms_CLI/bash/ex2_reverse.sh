#!/bin/bash
reverse_string() {
    local s="$1"
    local len=${#s}
    if [ "$len" -le 1 ]; then
        echo -n "$s"
    else
        local first_char="${s:0:1}"
        local rest="${s:1}"
        reverse_string "$rest"
        echo -n "$first_char"
    fi
}
reverse_string "abcd"
echo
