A, B = gets.split.map(&:to_i)
puts([0, 1, 2, 3, 4, 5, 6, 7, 8, 9].find { |i| i != A + B })
