N = gets.to_i
A = gets.split.map(&:to_i)
D = gets.to_i
p = Array.new(N + 1) { 0 }
p[1] = A[0]
(1..N).each { |i| p[i] = [A[i - 1], p[i - 1]].max }
q = Array.new(N + 1) { 0 }
q[-2] = A[-1]
(0..N - 1).reverse_each { |i| q[i] = [A[i], q[i + 1]].max }
D.times do
  l, r = gets.split.map(&:to_i)
  puts [p[l - 1], q[r]].max
end
