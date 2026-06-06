n, k, m = gets.split.map(&:to_i)
t = Array.new(n+1) { [] }
n.times do
  c, v = gets.split.map(&:to_i)
  t[c] << v
end
top = []
tail = []
t.each do |r|
  next if r.empty?

  r.sort!.reverse!
  top << r[0]
  tail += r[1..] || []
end
top.sort!.reverse!
tail += top[m..] || []
tail.sort!.reverse!
puts top[...m].sum + tail[...k-m].sum
