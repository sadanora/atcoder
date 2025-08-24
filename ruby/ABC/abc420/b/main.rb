n, m = gets.split.map(&:to_i)
arr = n.times.map{ gets.chomp.split('') }.transpose
rs = Array.new(n, 0)
arr.each do |as|
  x = as.count('0')
  y = as.count('1')
  if x == 0 || y == 0
    rs = rs.map { |r| r += 1}
  elsif x < y
    as.each_with_index { |a, i| rs[i] += 1 if a == '0' }
  elsif x > y
    as.each_with_index { |a, i| rs[i] += 1 if a == '1' }
  end
end
puts rs.max.then { |max| rs.each_index.select { |i| max==rs[i]} }.map(&:succ).join(' ')
