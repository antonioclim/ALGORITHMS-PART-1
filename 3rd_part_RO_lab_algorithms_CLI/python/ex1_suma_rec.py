def suma_rec(n):
    if n == 0:
        return 0
    return n + suma_rec(n - 1)
print(suma_rec(5))
