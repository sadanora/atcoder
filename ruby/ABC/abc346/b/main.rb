W, B = gets.split.map(&:to_i)
S = 'wbwbwwbwbwbw' * 240
length = W + B
ans = false
(240 - W + B).times do |i|
  target = S.slice(i, length)
  if target.count('w') == W && target.count('b')
    ans = true
    break
  end
end
puts ans ? 'Yes' : 'No'
