n, s, k = gets.split.map(&:to_i)
arr = n.times.map { gets.split.map(&:to_i) }
res = arr.map { _1*_2 }.sum
puts res < s ? res + k : res
