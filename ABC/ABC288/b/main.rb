n, k = gets.split.map(&:to_i)
arr = n.times.map{ gets.chomp }
puts arr[...k].sort
