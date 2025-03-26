#include <stdio.h>
int putere(int a, int b) {
    int rezultat = 1;
    for (int i = 0; i < b; i++) {
        rezultat *= a;
    }
    return rezultat;
}
int main() {
    printf("%d\n", putere(2, 5));
    return 0;
}
