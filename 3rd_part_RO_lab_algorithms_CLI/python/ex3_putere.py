def putere(a, b):
    rezultat = 1
    for _ in range(b):
        rezultat *= a
    return rezultat
print(putere(2, 5))
