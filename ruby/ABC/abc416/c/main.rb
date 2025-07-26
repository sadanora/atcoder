n, k, x = gets.split.map(&:to_i)
arr = n.times.map{ gets.chomp }
puts arr.repeated_permutation(k).map(&:join).sort[x-1]
