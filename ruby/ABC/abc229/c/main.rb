n, w = gets.split.map(&:to_i)
arr = n.times.map { gets.split.map(&:to_i) }.sort
ans = 0
(n-1).downto(0) do |i|
  a, b = arr[i]
  if b <= w
    ans += a*b
    w -= b
  else
    ans += w*a
    break
  end
end
puts ans
