n, k = gets.split.map(&:to_i)
as = n.times.map { gets.split.map(&:to_i)[1..] }
cs = gets.split.map(&:to_i)
k -= 1
n.times do |i|
  len = as[i].size*cs[i]
  if (k < len)
    k %= as[i].size
    puts as[i][k]
    exit
  end
  k -= len
end
