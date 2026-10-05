n = gets.to_i
arr = n.times.map { gets.split.map(&:to_i) }
ans = 0
n.times do |i|
  (i+1...n).each do |j|
    x1, y1, x2, y2 = [*arr[i], *arr[j]]
    ans = [ans, Math.sqrt((x1-x2)**2 + (y1-y2)**2)].max
  end
end
puts ans
