n, q = gets.split.map(&:to_i)
ls = n.times.map{ gets.split.map(&:to_i) }
qs = q.times.map{ gets.split.map(&:to_i) }
qs.each { |s,t| puts ls[s-1][t] }
