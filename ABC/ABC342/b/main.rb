gets
P = gets.split.map(&:to_i)
Q = gets.to_i
queue = Q.times.map { gets.split.map(&:to_i) }
queue.each do |q|
  a, b = q
  puts P.find_index(a) < P.find_index(b) ? a : b
end
