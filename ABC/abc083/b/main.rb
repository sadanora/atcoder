n, a, b = gets.split.map(&:to_i)
ans = 0
1.upto(n) do |i|
  s = i.digits.sum
  ans += i if a <= s && s <= b
end
puts ans
