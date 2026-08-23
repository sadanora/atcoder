# 多始点BFS

h, w, k = gets.split.map(&:to_i)
arr = h.times.map { gets.chomp.chars }
row = Array.new(h, false)
col = Array.new(w, false)
h.times do |i|
  w.times do |j|
    if (arr[i][j] == '#')
      row[i] = col[j] = true
    end
  end
end

INF = 1001001001
dist = Array.new(h) { Array.new(w, INF) }
queue = []
di = [-1,0,1,0]
dj = [0,-1,0,1]
push = ->(i,j,d) {
  return if (dist[i][j] != INF)

  dist[i][j] = d
  queue << [i,j]
}

h.times do |i|
  w.times do |j|
    push.call(i, j, 0) if !row[i] && !col[j]
  end
end

head = 0
while head < queue.size
  i, j = queue[head]
  head += 1
  4.times do |v|
    ni = i+di[v]
    nj = j+dj[v]
    next if ni < 0 || nj < 0 || ni >= h || nj >= w
    next if arr[ni][nj] == '#'

    push.call(ni, nj, dist[i][j]+1)
  end
end

p dist.sum { |ds| ds.count { _1 <= k } }
