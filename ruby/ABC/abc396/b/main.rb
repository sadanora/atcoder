q = gets.to_i
arr = q.times.map { gets.split.map(&:to_i) }
puts 'a'
c = Array.new(100, 0)
q.times do |i|
  if arr[i].size > 1
    c.unshift(arr[i][1])
  else
    puts c[0]
    c.shift[0]
  end
end
