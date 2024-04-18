X = gets.to_i
c = 100
ans = 0
while c < X do
  c += c / 100
  ans += 1
end
puts ans
