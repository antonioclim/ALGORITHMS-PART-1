#!/bin/bash

echo "=== Testare automata pentru laborator algoritmi ==="

BASE_DIR=$(dirname "$0")

echo ""
echo ">> Bash Shell"
for file in "$BASE_DIR/bash"/*.sh; do
    echo -n "Execut $file: "
    bash "$file"
done

echo ""
echo ">> C (compilare si rulare)"
for file in "$BASE_DIR/c"/*.c; do
    exe="${file%.c}.out"
    gcc "$file" -o "$exe"
    echo -n "Execut $exe: "
    "$exe"
done

echo ""
echo ">> Python"
for file in "$BASE_DIR/python"/*.py; do
    echo -n "Execut $file: "
    python3 "$file"
done

echo ""
echo "=== Testare finalizata ==="
