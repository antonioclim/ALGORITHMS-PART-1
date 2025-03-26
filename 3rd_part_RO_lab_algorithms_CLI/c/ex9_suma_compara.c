#include <stdio.h>
int suma_iter(int n) {
    int total = 0;
    for (int i = 1; i <= n; i++) {
        total += i;
    }
    return total;
}
int main() {
    printf("%d\n", suma_iter(5));
    return 0;
}
