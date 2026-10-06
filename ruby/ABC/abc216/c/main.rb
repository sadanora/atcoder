n = gets.to_i
ans = []
while n > 0
  if n.even?
    n /= 2
    ans.unshift('B')
  else
    n -= 1
    ans.unshift('A')
  end
end
puts ans.join('')
