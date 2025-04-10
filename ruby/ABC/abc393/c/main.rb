n, m = gets.split.map(&:to_i)
h = Array.new(n+1){[]}
ans = 0
m.times do
  v1, v2 = gets.split.map(&:to_i).sort
  if v1 == v2
    ans += 1
  elsif h[v1].include?(v2)
    ans += 1
  else
    h[v1] << v2
  end
end
puts ans
