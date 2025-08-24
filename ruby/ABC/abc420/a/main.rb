x, y = gets.split.map(&:to_i)
a = (x+y) % 12
puts a.zero? ? '12' : a
