n = gets.to_i
rs, ls = gets.split.map(&:to_i).partition { _1.positive? }
rs.sort!
ls.sort!.reverse!
INF = 10**18
rs << INF
ls << -INF
x = 0
ans = 0
n.times do
  r = rs[0]
  l = ls[0]
  if (x-l <= r-x)
    ans += x-l
    x = l
    ls.shift
  else
    ans += r-x
    x = r
    rs.shift
  end
end
p ans
