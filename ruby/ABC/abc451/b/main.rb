n, m = gets.split.map(&:to_i)
arr = n.times.map{ gets.split.map(&:to_i) }
res = Array.new(m, 0)
arr.each do |a, b|
  res[a-1] -=1
  res[b-1] += 1
end
puts res
