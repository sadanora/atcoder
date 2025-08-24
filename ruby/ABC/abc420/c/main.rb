n, q = gets.split.map(&:to_i)
as = [0] + gets.split.map(&:to_i)
bs = [0] + gets.split.map(&:to_i)
ms = (0..n).map { |i| [as[i], bs[i]].min }
s = ms.sum
q.times do
  case gets.chomp.split
  in ['A', x, v]
    x, v = [x, v].map(&:to_i)
    as[x] = v
  in ['B', x, v]
    x, v = [x, v].map(&:to_i)
    bs[x] = v
  end
  mi = [as[x], bs[x]].min
  s += mi - ms[x]
  ms[x] = mi
  p s
end
