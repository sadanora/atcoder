T = gets.to_i
N = gets.to_i
LR = N.times.map { gets.split.map(&:to_i) }
staff = Array.new(T + 1) { 0 }
LR.each  do |lr|
  l, r = lr
  staff[l] += 1
  staff[r] -= 1
end
cs = [0]
T.times { |i| cs[i + 1] = cs[i] + staff[i] }
puts cs[1..]
