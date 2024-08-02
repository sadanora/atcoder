n = gets.to_i
n.times {
  a, b = gets.split.map(&:to_i)
  puts a + b
}
