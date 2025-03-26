#include <stdio.h>
int serie_an(int n) {
    int a = 3;
    for (int i = 1; i <= n; i++) {
        a = a * 2 + 1;
    }
    return a;
}
int main() {
    printf("%d\n", serie_an(5));
    return 0;
}
