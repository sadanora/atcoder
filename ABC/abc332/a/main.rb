N, S, K = gets.split.map(&:to_i)
amount = 0
N.times{
  a, b = gets.split.map(&:to_i)
  amount += a * b
}
puts amount >= S ? amount : amount + K
