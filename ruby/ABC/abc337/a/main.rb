N = gets.to_i
t = 0
a = 0
ans = 'Draw'
N.times{
  p = gets.split.map(&:to_i)
  t += p[0]
  a += p[1]
}
if t > a
  ans = 'Takahashi'
elsif t < a
  ans = 'Aoki'
end
puts ans
