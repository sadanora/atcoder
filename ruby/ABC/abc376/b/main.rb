def move(n, from ,to, ng)
  from, to = to, from if from > to

  if from < ng && ng < to
    n + from - to
  else
    to - from
  end
end

n, q = gets.split.map(&:to_i)
arr = q.times.map{ gets.split }
l, r = 1, 2
ans = 0

arr.each do |h, t|
  t = t.to_i
  if h == 'R'
    ans += move(n, r, t, l)
    r = t
  else
    ans += move(n, l, t, r)
    l = t
  end
end
puts ans
