n, k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
ans = 1
arr.each do |a|
  b = ans * a
  if b.digits.size >= k+1
    ans = 1
  else
    ans = b
  end
end
puts ans
