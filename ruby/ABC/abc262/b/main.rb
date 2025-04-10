n, m = gets.split.map(&:to_i)
arr = m.times.map { gets.split.map(&:to_i) }
adj = Array.new(n) { Array.new(n, false)  }
arr.each do |u, v|
  u -= 1
  v -= 1
  adj[u][v] = true
  adj[v][u] = true
end

ans = 0

n.times do |i|
  (i+1...n).each do |j|
    (j+1...n).each do |k|
      ans += 1 if adj[i][j] && adj[j][k] && adj[k][i]
    end
  end
end

puts ans
