n, m = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
ans = []
r = 1
while r <= n
  l = r
  while r == a_arr[0]
    a_arr.shift
    r += 1
  end
  ans << (l..r).to_a.reverse
  r += 1
end
puts ans.join(' ')
