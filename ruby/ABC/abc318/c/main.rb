n, d, price = gets.split.map(&:to_i)
fs = gets.split.map(&:to_i).sort
cs = [0]
(1..(fs.size)).each { |i| cs[i] = cs[i-1] + fs[i-1] }
ans = 1e18
(0..).each do |i|
  r = [0, n-i*d].max
  now = cs[r] + price*i
  ans = [ans, now].min

  break if r == 0
end
puts ans
