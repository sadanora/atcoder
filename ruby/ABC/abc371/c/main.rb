def input_graph(n)
  arr = Array.new(n) { Array.new(n, false) }
  m = gets.to_i
  m.times do
    a, b = gets.split.map(&:to_i)
    a -= 1
    b -= 1
    arr[a][b] = true
    arr[b][a] = true
  end
  arr
end

n = gets.to_i
g = input_graph(n)
h = input_graph(n)
a = Array.new(n) { Array.new(n, 0) }
(n-1).times do |i|
  gets.split.map(&:to_i).each.with_index(i+1) do |v, j|
    a[i][j] = v
    a[j][i] = a[i][j]
  end
end

ans = []
(0...n).to_a.permutation do |arr|
  ans << 0
  n.times do |i|
    (i+1).upto(n-1) do |j|
      next if g[i][j] == h[arr[i]][arr[j]]
      ans[-1] += a[arr[i]][arr[j]]
    end
  end
end

puts ans.min
