n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
ans = 10**10
ai, bi = 0, 0
while ai < n && bi < m
  diff = (a[ai] - b[bi]).abs
  ans = [ans, diff].min
  if a[ai] < b[bi]
    ai += 1
  else
    bi += 1
  end
end
puts ans
