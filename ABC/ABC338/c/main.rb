N = gets.to_i
Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
inf = 10**18
ans = 0
(Q.max + 1).times do |x|
  y = inf
  N.times do |i|
    if Q[i] < A[i] * x
      y = -inf
    elsif B[i] > 0
      y = [y, (Q[i] - A[i] * x) / B[i]].min
    end
  end
  ans = [ans, x + y].max
end
puts ans
