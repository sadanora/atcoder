N, D = gets.split.map(&:to_i)
ans = 0
N.times{
  x, y =gets.split.map(&:to_i)
  ans += 1 if Math.sqrt(x**2 + y**2) <= D
}
puts ans
