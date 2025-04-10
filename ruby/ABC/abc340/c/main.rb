@memo = {}
def rec(n)
  return 0 if n == 1

  @memo[n] ||= rec(n / 2) + rec(n.ceildiv(2)) + n
end
puts rec(gets.to_i)
