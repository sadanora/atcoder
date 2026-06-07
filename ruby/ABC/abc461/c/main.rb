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
  tail.concat(r[1..]) if r.size > 1
end
top.sort!.reverse!
tail.concat(top[m..]) if m < top.size
tail.sort!.reverse!
puts top[...m].sum + tail[...k-m].sum
