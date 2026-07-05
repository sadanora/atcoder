x, y, l, r, a, b = gets.split.map(&:to_i)
prices = Array.new(24, 0).map.with_index { |t, i| (i < l || i >= r) ?  y : x }
puts prices[a...b].sum
