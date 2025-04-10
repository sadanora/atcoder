n, d = gets.split.map(&:to_i)
arr = n.times.map { gets.split.map(&:to_i) }
d.times do
  arr = arr.map { [_1[0], _1[-1] + 1] }
  puts arr.map { _1.inject(:*) }.max
end
