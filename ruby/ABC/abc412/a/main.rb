n = gets.to_i
arr = n.times.map{ gets.split.map(&:to_i) }
puts arr.count { _1 < _2 }
