#include <stdio.h>
int memo[100] = {0};
int climb_stairs(int n) {
    if (n == 0) return 1;
    if (n < 0) return 0;
    if (memo[n] != 0) return memo[n];
    memo[n] = climb_stairs(n - 1) + climb_stairs(n - 2) + climb_stairs(n - 3);
    return memo[n];
}
int main() {
    printf("%d\n", climb_stairs(4));
    return 0;
}
