n = gets.to_i
s = gets.chomp
ans = Float::INFINITY
2.times do
  now = 0
  ai = 0
  (n*2).times do |i|
    if s[i] == 'A'
      now += (i - ai*2).abs
      ai += 1
    end
  end
  ans = [ans, now].min
  s = s.reverse
end
puts ans
