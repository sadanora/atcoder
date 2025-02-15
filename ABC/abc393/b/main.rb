s = gets.chomp
ans = 0
(s.size - 2).times do |i|
  (1..(s[i..].size / 2)).each do |j|
    ans += 1 if s[i] == 'A' && s[i+j] == 'B' && s[i+j*2] == 'C'
  end
end
puts ans
