n, d = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
ans = -1
(n-1).times { |i|
  if t[i+1] - t[i] <= d
    ans = t[i+1]
    break
  end
}
puts ans
