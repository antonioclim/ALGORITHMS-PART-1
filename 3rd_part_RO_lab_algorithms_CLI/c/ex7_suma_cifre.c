#include <stdio.h>
int sum_digits(int n) {
    int total = 0;
    while (n > 0) {
        total += n % 10;
        n /= 10;
    }
    return total;
}
int main() {
    printf("%d\n", sum_digits(1234));
    return 0;
}
