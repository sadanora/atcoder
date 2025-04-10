s = gets.chomp
ans = 0
('A'..'Y').each do |c|
  ans += (s.index(c.next) - s.index(c)).abs
end
puts ans
