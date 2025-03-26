def serie_an(n):
    a = 3
    for _ in range(n):
        a = a * 2 + 1
    return a
print(serie_an(5))
