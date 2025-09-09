n = gets.to_i
arr = n.times.map{ gets.chomp }
puts arr.tally.max_by { |v, c| [c, v] }[0]
