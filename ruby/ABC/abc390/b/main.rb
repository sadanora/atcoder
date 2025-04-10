n = gets.to_i
arr = gets.split.map(&:to_i)
res = 'Yes'
(n-2).times do |i|
  if arr[i] * arr[i+2] != arr[i+1]**2
    res = 'No'
    break
  end
end
puts res
