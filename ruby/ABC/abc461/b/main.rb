n = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
ans = "Yes"
n.times do |i|
  x = as[i] - 1
  y = bs[x] - 1
  if i == y
    next
  else
    ans = "No"
    break
  end
end
puts ans
