gets.to_i
gets.split.map(&:to_i)
arr = n.times.map{ gets.to_i }
arr = n.times.map{ gets.split.map(&:to_i) }
