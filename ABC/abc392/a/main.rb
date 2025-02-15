arr = gets.split.map(&:to_i)
ans = 'No'
[0,1,2].permutation(3).each do |i,j,k|
  if arr[i] == arr[j] * arr[k]
    ans = 'Yes'
    break
  end
end
puts ans
