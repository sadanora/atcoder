s = gets.chomp.chars
t = gets.chomp.chars
res = []
t.each.with_index(1) { |c, i|
  if c == s[0]
    res << i
    s.shift
  end
}
res = (0...s.size).filter_map { s[_1] == t[_1]; s.shift }
puts res.join(' ')
