r, c = gets.split.map(&:to_i)
puts 2.times.map { gets.split.map(&:to_i) }[r-1][c-1]
