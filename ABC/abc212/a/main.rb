a, b = gets.split.map(&:to_i)
puts a == 0 ? 'Silver' : b == 0 ? 'Gold' : 'Alloy'
