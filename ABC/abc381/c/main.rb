n = gets.to_i
s = gets.chomp
ans = 0
n.times do |i|
  next if s[i] != '/'
  d = 0
  while  true
    l = i-(d+1)
    r = i+(d+1)
    break if !(0 <= l && l < n)
    break if !(0 <= r && r < n)
    break if !(s[l] == '1')
    break if !(s[r] == '2')
    d += 1
  end
  ans = [ans, 1+d*2].max
end
puts ans
