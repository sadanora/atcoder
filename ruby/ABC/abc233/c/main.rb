n, x = gets.split.map(&:to_i)
res = [1]
n.times do
  _, *as = gets.split.map(&:to_i)
  res = res.product(as).map { it.inject(:*) }
end
p res.count(x)
