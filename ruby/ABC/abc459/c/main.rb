n, q = gets.split.map(&:to_i)
arr = q.times.map{ gets.split.map(&:to_i) }
boxes = Array.new(n+q+1, 0)
res = Array.new(n+q+1, 0)
border = 0
arr.each do |a, b|
  if a == 1
    boxes[b] += 1
    res[boxes[b]] += 1
    border += 1 if res[boxes[b]] - border >= n
  elsif a == 2
    puts res[b+border]
  end
end
