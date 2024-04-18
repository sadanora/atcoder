A, B = gets.split.map(&:to_i)
ans = 'No'
(A..B).each do |n|
  if 100 % n == 0
    ans = 'Yes'
    break
  end
end
puts ans
