s = gets.chomp.chars
puts s.map { _1 != 'A' ? '.' : 'A' }.join('')
