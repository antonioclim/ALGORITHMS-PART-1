#!/bin/bash

echo "=== Evaluare automata pentru laborator algoritmi ==="
echo ""

TOTAL=0
CORECTE=0

function test_output() {
    local descr="$1"
    local cmd="$2"
    local expected="$3"
    local result

    result=$(eval "$cmd" 2>/dev/null)

    if [ "$result" == "$expected" ]; then
        echo "[✓] $descr => $result"
        CORECTE=$((CORECTE + 1))
    else
        echo "[✗] $descr => $result (asteptat: $expected)"
    fi
    TOTAL=$((TOTAL + 1))
}

cd "$(dirname "$0")"

echo ">> Teste Bash"
test_output "Suma recursiva (Bash)" "bash bash/ex1_suma_rec.sh" "15"
test_output "Inversare sir (Bash)" "bash bash/ex2_reverse.sh" "dcba"
test_output "Putere 2^5 (Bash)" "bash bash/ex3_putere.sh" "32"
test_output "GCD 48,18 (Bash)" "bash bash/ex4_gcd.sh" "6"
test_output "Grid paths 2x2 (Bash)" "bash bash/ex5_grid_paths.sh" "6"
test_output "Climb stairs 4 (Bash)" "bash bash/ex6_climb_stairs.sh" "7"
test_output "Suma cifrelor 1234 (Bash)" "bash bash/ex7_suma_cifre.sh" "10"
test_output "Serie recurenta n=5 (Bash)" "bash bash/ex8_serie_recurenta.sh" "127"
test_output "Suma iterativa (Bash)" "bash bash/ex9_suma_compara.sh" "15"
test_output "Suma cifre iterativ (Bash)" "bash bash/ex10_suma_cifre_transformare.sh" "10"

echo ""
echo ">> Rezultat final: $CORECTE / $TOTAL teste corecte"
