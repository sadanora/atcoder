q = gets.to_i
snakes = []
s = [0]
f = 0
ans = []
q.times do
  query = gets.split.map(&:to_i)
  if query[0] == 2
    f += 1
    next
  end

  t, n = query
  if t == 3
    ans << (s[n-1+f] - s[f])
  elsif t == 1
    snakes.push(n)
    s << s[-1] + n
  end
end

puts ans.size > 0 ? ans : nil
