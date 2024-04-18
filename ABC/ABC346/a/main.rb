N = gets.to_i
A = gets.split.map(&:to_i)
ans = (N - 1).times.map { |i| A[i] * A[i + 1] }
puts ans.join(' ')
