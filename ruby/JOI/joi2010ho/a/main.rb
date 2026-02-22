n, m = gets.split.map(&:to_i)
ds = (n-1).times.map { gets.to_i }
as = m.times.map { gets.to_i }
cs_d = Array.new(n, 0)
(1...n).each { cs_d[it] = cs_d[it-1] + ds[it-1] }
current = 1
ans = 0
as.each do |a|
  from = current
  to = from + a
  ans += (cs_d[to-1] - cs_d[from-1]).abs
  current = to
end
puts ans % (10**5)

