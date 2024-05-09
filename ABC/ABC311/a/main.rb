gets
s = gets.chomp
puts 'ABC'.split('').map { |c| s.index(c) }.max + 1
