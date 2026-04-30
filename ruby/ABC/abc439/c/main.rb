n = gets.to_i
cs = [0] * (n+1)
(1..n).each do |x|
  break if x**2 > n
  ((x+1)..n).each do |y|
    break if (x**2 + y**2) > n
    cs[x**2 + y**2] += 1
  end
end
res = cs.filter_map.with_index { |v, i| v == 1 ? i : nil }
puts res.size
puts res.join(' ')
