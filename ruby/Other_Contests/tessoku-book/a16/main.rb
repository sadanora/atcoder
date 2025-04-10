# 5
N = gets.to_i
# [2, 4, 1, 3]
A = gets.split.map(&:to_i)
# [5, 3, 7]
B = gets.split.map(&:to_i)
# [0, 0, 0, 0, 0, 0]
dp = Array.new(N + 1) { 0 }
# [0, 0, 2, 0, 0, 0]
dp[1] = 0
dp[2] = A[0]
(3..N).each do |i|
  dp[i] = [dp[i - 1] + A[i - 2], dp[i - 2] + B[i - 3]].min
end
puts dp[-1]
