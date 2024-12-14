n, c_one, c_two = gets.chomp.split
s = gets.chomp
puts s.chars.map { |c| c == c_one ? c_one : c_two }.join('')
