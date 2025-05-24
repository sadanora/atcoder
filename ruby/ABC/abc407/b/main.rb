x, y = gets.split.map(&:to_i)
arr = [1,2,3,4,5,6].repeated_permutation(2)
res = arr.filter_map { _1.sum >= x || (_1[0] - _1[1]).abs >= y}.size
puts res / 36.0
