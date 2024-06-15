s = gets.chomp
s.each_char do |c|
  print c == '0' ? 1 : 0
end
puts ''
