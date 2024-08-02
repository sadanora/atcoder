n = gets.to_i
arr = gets.split.map(&:to_i)
res = []
n.times { |i|
  res << arr[i]
  while res.size > 1 && res[res.size-1] == res[res.size-2]
    s = res[-1] + 1
    2.times { res.pop }
    res << s
  end
}
puts res.size
