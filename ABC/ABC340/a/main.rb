a, b, d = gets.split.map(&:to_i)
ans = [a]
n = a
while n < b
  ans << n += d
end
puts ans.join(' ')
