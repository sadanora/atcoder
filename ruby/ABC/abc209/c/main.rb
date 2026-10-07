n = gets.to_i
cs = gets.split.map(&:to_i).sort
mod = 10**9+7
ans = 1
n.times do |i|
  ans = ans * (cs[i]-i) % mod
end
puts ans
