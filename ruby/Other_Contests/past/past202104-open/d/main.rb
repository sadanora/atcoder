N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
cs = Array.new(N + 1) { 0 }
A.each_with_index do |a, i|
  cs[i + 1] = cs[i] + a
end
(1..(N - K + 1)).each do |x|
  l = x - 1
  r = x + K - 1
  puts cs[r] - cs[l]
end
