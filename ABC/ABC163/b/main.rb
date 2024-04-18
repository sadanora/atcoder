N, _ = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
ans = N - A.sum
puts 0 <= ans ? ans : -1
