n, q = gets.split.map(&:to_i)
arr = n.times.map{ gets.split.map(&:to_i) }
q.times {
  s, t = gets.split.map(&:to_i)
  puts arr[s-1][t]
}
