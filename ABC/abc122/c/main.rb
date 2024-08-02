N, Q = gets.split.map(&:to_i)
S = gets.chomp
cs = [0] * (N+1)
cnt = 0
N.times{|i|
  a = S[i-1..i] == 'AC' ? 1 : 0
  cs[i+1] = cs[i] + a
  # if S[i] == 'A' && S[i+1] == 'C'
  #   cnt += 1
  #   cs[i+1] = cnt
  # end
}
# p cs
Q.times{
  l, r = gets.split.map(&:to_i)
  puts cs[r] - cs[l]
}
