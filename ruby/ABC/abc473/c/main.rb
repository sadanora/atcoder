n, k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
c = Array.new(k, 0)
m = 0
arr.each do |a|
  c[a-1] += 1

  m = c[a-1] if c[a-1] > m
end
p c.count { _1 >= m-1}
