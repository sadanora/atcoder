n = gets.to_i
s = gets.chomp
ans = Float::INFINITY
2.times do |si|
  now = 0
  ai = 0
  (n*2).times do |i|
    if s[i] == 'A'
      now += (i - (ai*2+si)).abs
      ai += 1
    end
  end
  ans = [ans, now].min
end
puts ans
