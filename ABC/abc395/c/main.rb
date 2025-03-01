n = gets.to_i
arr = gets.split.map(&:to_i)
h = {}
arr.each_with_index do |a,i|
  if h[a].nil?
    h[a] = [i, nil]
  else
    h[a] = [i, i - h[a][0] + 1]
  end
end
min = h.values.transpose[1].compact.min
puts min ? min : -1
