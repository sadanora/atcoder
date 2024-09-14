l, r = gets.split.map(&:to_i)
ans = 'Invalid'
if [l, r].sum == 1
  ans = l == 1 ? 'Yes' : 'No'
end
puts ans
