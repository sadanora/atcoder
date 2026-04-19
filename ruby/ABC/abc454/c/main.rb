n, m = gets.split.map(&:to_i)
tos = Array.new(n) { [] }
m.times do
  a, b = gets.split.map(&:to_i)
  tos[a-1] << b-1
end
queue = [0]
visited = Array.new(n, false)
visited[0] = true
while !queue.empty?
  v = queue.shift
  tos[v].each do |to|
    next if visited[to]

    visited[to] = true
    queue << to
  end
end
puts visited.count(true)
