N, M = gets.split.map(&:to_i)
lines = Array.new(N){0}
M.times{
  a, b = gets.split.map{_1.to_i - 1}
  lines[a] += 1
  lines[b] += 1
}
puts lines
