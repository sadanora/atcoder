N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
ans = 0
l = 0
r = N - 1
while l <= r
  m = (l + r) / 2
  if X == A[m]
    ans = m + 1
    break
  end
  r = m - 1 if X < A[m]
  l = m + 1 if X > A[m]
end
puts ans
