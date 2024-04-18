_, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
ans = 'No'
A.each  do |a|
  ans = 'Yes' if a == X
end
puts ans
