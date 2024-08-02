N = gets.to_i
S = gets.chomp
C = gets.split.map(&:to_i)

INF = 2 * 10**5
dp = Array.new(N) { INF }
dp[0] = 0
