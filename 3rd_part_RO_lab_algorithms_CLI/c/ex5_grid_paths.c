#include <stdio.h>
int memo[100][100] = {0};
int grid_paths(int m, int n) {
    if (m == 0 || n == 0) return 1;
    if (memo[m][n] != 0) return memo[m][n];
    memo[m][n] = grid_paths(m - 1, n) + grid_paths(m, n - 1);
    return memo[m][n];
}
int main() {
    printf("%d\n", grid_paths(2, 2));
    return 0;
}
