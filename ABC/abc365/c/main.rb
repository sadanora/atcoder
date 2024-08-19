n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort
if arr.sum <= m
  puts 'infinite'
  exit
end
ok, ng = 0, arr.max
while ok + 1 < ng
  mi = (ok + ng) / 2
  s = arr.map { [mi, _1].min }.sum
  if s <= m
    ok = mi
  else
    ng = mi
  end
end
puts ok
