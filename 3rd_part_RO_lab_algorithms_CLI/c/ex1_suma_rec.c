#include <stdio.h>
int suma_rec(int n) {
    if (n == 0) return 0;
    return n + suma_rec(n - 1);
}
int main() {
    printf("%d\n", suma_rec(5));
    return 0;
}
