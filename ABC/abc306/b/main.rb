a = gets.split.map(&:to_i)
puts a.filter_map.with_index { |n, i| 2**i if n == 1 }.sum
