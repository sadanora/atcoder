S = gets.chomp
N = S.length / 2
ans = 0
(0...N).each{|n|
  ans += 1 if S[n] != S[-1-n]
}
puts ans
