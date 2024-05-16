n, x, y, z = gets.split.map(&:to_i)
x, y = y, x if x > y
puts (x..y).include?(z) ? 'Yes' : 'No'
