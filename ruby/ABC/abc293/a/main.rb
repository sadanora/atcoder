s = gets.chomp
1.upto(s.size / 2) { |i|
  s[2*i-1], s[2*i-2] = s[2*i-2], s[2*i-1]
}
puts s
