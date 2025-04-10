N, Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
cs = [0]
A.each_with_index { |a, i| cs[i + 1] = cs[i] + a }
Q.times  do
  l, r = gets.split.map(&:to_i)
  puts cs[r] - cs[l - 1]
end
