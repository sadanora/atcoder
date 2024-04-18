# N = gets.to_i
# arr = (1..9).filter { |i| N % i == 0 }
# ans = []
# (0..N).each do |i|
#   s = '-'
#   arr.each do |j|
#     if i % (N / j) == 0
#       s = j
#       break
#     end
#   end
#   ans << s
# end
# puts ans.join

N = gets.to_i
Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
inf = 10**7
ans = 0
(Q.max + 1).times do |x|
  y = inf
  N.times do |i|
    if Q[i] < A[i] * x
      y = -inf
    elsif B[i] > 0
      y = [y, (Q[i] - A[i] * x) / B[i]].min
    end
    ans = [ans, x + y].max
  end
end
puts ans
