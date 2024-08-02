h, w = gets.split.map(&:to_i)
arr = h.times.map{ gets.chomp.chars }
puts arr.transpose.map { _1.count('#') }.join(' ')
