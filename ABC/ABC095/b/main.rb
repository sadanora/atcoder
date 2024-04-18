N, X = gets.split.map(&:to_i)
m = []
N.times{
  m << gets.to_i
}
puts N + ((X - m.sum) / m.min)
