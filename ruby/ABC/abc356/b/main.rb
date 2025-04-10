n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = n.times.map{ gets.split.map(&:to_i) }
ans = 'Yes'
x.transpose.each_with_index do |c, i|
  if c.sum < a[i]
    ans = 'No'
    break
  end
end
puts ans
