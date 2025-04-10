N, M, t = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
bonus = {}
M.times{
  i, v = gets.split.map(&:to_i)
  bonus[i] = v
}
ans = 'Yes'
A.each_with_index{|v, i|
  t += bonus[i+1] if bonus[i+1]
  t -= v
  if t <= 0
    ans = 'No'
    break
  end
}
puts ans
