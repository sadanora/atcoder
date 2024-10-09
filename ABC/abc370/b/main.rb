n = gets.to_i
arr = Array.new(n) { Array.new(n, 0) }
n.times do |i|
  gets.split.map(&:to_i).each_with_index do |v, j|
    arr[i][j] = v - 1
    arr[j][i] = arr[i][j]
  end
end
puts n.times.inject(0) { |x, y| x = arr[x][y] } + 1
