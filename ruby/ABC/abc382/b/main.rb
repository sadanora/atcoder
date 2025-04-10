n, d = gets.split.map(&:to_i)
s = gets.chomp
d.times do
  rs = s.reverse
  t = rs.index("@") + 1
  s[-t] = '.'
end
puts s
