arr = (1..5).to_a
a_arr = gets.split.map(&:to_i)
res = 'No'
1.upto(4) do |i|
  b = a_arr.dup
  b[i], b[i-1] = b[i-1], b[i]
  if arr == b
    res = 'Yes'
    break
  end
end
puts res
