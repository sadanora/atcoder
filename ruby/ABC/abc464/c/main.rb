n, m = gets.split.map(&:to_i)
arr = Array.new(m+1) { [] }
kind = 0
colors = Array.new(n+1, 0)
n.times do
  a, d, b = gets.split.map(&:to_i)

  if d == 1
    kind += 1 if colors[b] == 0
    colors[b] += 1
  else
    kind += 1 if colors[a] == 0
    colors[a] += 1
    arr[d] << [a, b]
  end
end
1.upto(m) do |i|
  arr[i].each do |a, b|
    colors[a] -= 1
    kind -= 1 if colors[a] == 0
    kind += 1 if colors[b] == 0
    colors[b] += 1
  end
  puts kind
end
