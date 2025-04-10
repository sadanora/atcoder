n = gets.to_i
ab = n.times.map { gets.split.map(&:to_i) }
m = 0
a_sum = 0
ab.each do |a, b|
  m = [m, b - a].max
  a_sum += a
end
puts a_sum + m
