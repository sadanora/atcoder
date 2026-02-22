n = gets.to_i
c1 = Array.new(n, 0)
c2 = Array.new(n, 0)
n.times do |i|
  a, b = gets.split.map(&:to_i)
  a == 1 ? c1[i] = b : c2[i] = b
end
cs_c1 = Array.new(n+1, 0)
cs_c2 = Array.new(n+1, 0)
(1..n).each do |i|
  cs_c1[i] = c1[i-1] + cs_c1[i-1]
  cs_c2[i] = c2[i-1] + cs_c2[i-1]
end
q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  puts [cs_c1[r] - cs_c1[l-1], cs_c2[r] - cs_c2[l-1]].join(" ")
end

