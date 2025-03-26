def grid_paths(m, n, memo=None):
    if memo is None:
        memo = {}
    if m == 0 or n == 0:
        return 1
    if (m, n) in memo:
        return memo[(m, n)]
    memo[(m, n)] = grid_paths(m - 1, n, memo) + grid_paths(m, n - 1, memo)
    return memo[(m, n)]
print(grid_paths(2, 2))
