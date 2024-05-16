a, b = gets.split.map(&:to_i)
puts (a % 3) != 0 && (a + 1) == b ? 'Yes' : 'No'
