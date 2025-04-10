n = gets.to_i
arr = gets.split.map(&:to_i)
ans = n + 1
pos = Array.new(1000001) { []}
n.times { |i| pos[arr[i]] << i }
1000001.times do |i|
  next if pos[i].size < 2
  (pos[i].size - 1).times do |j|
    ans = [ans, pos[i][j+1] - pos[i][j] + 1].min
  end
end
puts ans == n + 1 ? -1 : ans
