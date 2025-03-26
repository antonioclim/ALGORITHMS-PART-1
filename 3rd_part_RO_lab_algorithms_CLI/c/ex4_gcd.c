#include <stdio.h>
int gcd(int a, int b) {
    while (b != 0) {
        int r = a % b;
        a = b;
        b = r;
    }
    return a;
}
int main() {
    printf("%d\n", gcd(48, 18));
    return 0;
}
