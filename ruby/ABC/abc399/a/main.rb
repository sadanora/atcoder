n = gets.to_i
s = gets.chomp
t = gets.chomp
puts n.times.map { s[_1] != t[_1] ? 1 : 0 }.sum
