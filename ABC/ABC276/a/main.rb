s = gets.chomp
res = s.chars.map.with_index(1) { _2 if _1 == 'a'}.compact
puts res.size == 0 ? -1 : res[-1]
