N = gets.to_i
cp = N.times.map { gets.split.map(&:to_i) }
Q = gets.to_i
lr = Q.times.map { gets.split.map(&:to_i) }
c1_cs, c2_cs = 2.times.map { Array.new(N + 1) { 0 } }
cp.each_with_index do |arr, i|
  c, pt = arr
  if c == 1
    c1_cs[i + 1] = c1_cs[i] + pt
    c2_cs[i + 1] = c2_cs[i]
  else
    c1_cs[i + 1] = c1_cs[i]
    c2_cs[i + 1] = c2_cs[i] + pt
  end
end
lr.each do |arr|
  l, r = arr
  a = c1_cs[r] - c1_cs[l - 1]
  b = c2_cs[r] - c2_cs[l - 1]
  puts [a, b].join(' ')
end
