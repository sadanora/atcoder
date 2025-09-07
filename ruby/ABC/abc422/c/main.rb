# 二分探索
t = gets.to_i
t.times do
  a, b, c = gets.split.map(&:to_i)
  judge = ->(x) {
    if a < x || c < x
      false
    else
      s = (a-x) + b + (c-x)
      s >= x
    end
  }

  ac = 0
  wa = a + 1
  while (wa - ac) > 1
    wj = (ac+wa) / 2
    if judge.call(wj)
      ac = wj
    else
      wa = wj
    end
  end
  puts ac
end
# t = gets.to_i
# t.times do
#   a, b, c = gets.split.map(&:to_i)
#   puts [a, c, [a, b, c].sum / 3].min
# end
