a, op, b = gets.split
a, b = [a, b].map(&:to_i)
puts op == '+' ? a + b : a - b
