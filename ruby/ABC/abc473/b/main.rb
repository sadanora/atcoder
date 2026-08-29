n = gets.to_i
arr = gets.split.map(&:to_i)
puts arr.tally.filter { |k, v| v.odd? }.keys.sum
