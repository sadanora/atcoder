n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
(1..n).each do |num|
  idx = a.index(num)
  ans += 1 if a[idx] == a[idx + 2]
end
puts ans
