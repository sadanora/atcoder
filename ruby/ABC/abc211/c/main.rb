s = [''] + gets.chomp.chars
n = s.size
t = '*chokudai'
mod = 10**9+7

dp = Array.new(n+1) { Array.new(9, 0) }
(n+1).times { dp[it][0] = 1 }
(1..n).each do |i|
  (1..8).each do |j|
    x = dp[i-1][j]
    x += dp[i-1][j-1] if s[i] == t[j]
    dp[i][j] = x%mod
  end
end
puts dp[-1][-1]
