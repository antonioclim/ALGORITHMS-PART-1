#include <stdio.h>
void reverse(const char *s) {
    if (*s == '\0') return;
    reverse(s + 1);
    putchar(*s);
}
int main() {
    reverse("abcd");
    putchar('\n');
    return 0;
}
