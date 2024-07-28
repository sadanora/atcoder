s = gets.chomp
h = {}
s.chars.each { h[s.count(_1)] = _1 }
puts h[1] ? h[1] : -1
