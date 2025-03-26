def climb_stairs(n, memo=None):
    if memo is None:
        memo = {}
    if n == 0:
        return 1
    if n < 0:
        return 0
    if n in memo:
        return memo[n]
    memo[n] = climb_stairs(n - 1, memo) + climb_stairs(n - 2, memo) + climb_stairs(n - 3, memo)
    return memo[n]
print(climb_stairs(4))
