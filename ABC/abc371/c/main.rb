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
a_arr = Array.new(n) { Array.new(n){0} }
pp a_arr
(n-1).times do |i|
  as = gets.split.map(&:to_i)
  p as
  as.each_with_index do |a, j|
    a_arr[i][j] = a
    a_arr[j][i] = a_arr[i][j]
  end
end
pp a_arr
# p = Array.new(n, 0)
