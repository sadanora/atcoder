n = gets.to_i
arr = gets.split.map(&:to_i)
hs = (0..n).map { |i| [i, arr.count { |j| i <= j }] }
p hs.filter { |k, v| k <= v}.map(&:first).max
