#include <stdio.h>
int sum_digits_iter(int n) {
    int total = 0;
    while (n > 0) {
        total += n % 10;
        n /= 10;
    }
    return total;
}
int main() {
    printf("%d\n", sum_digits_iter(4321));
    return 0;
}
