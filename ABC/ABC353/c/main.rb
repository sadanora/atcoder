n = gets.to_i
a = gets.split.map(&:to_i).sort
r = n
res = 0
cnt = 0
(0...n).each { |i|
  r = [r, i + 1].max
  while r - 1 > i && a[r - 1] + a[i] >= 10**8
    r -= 1
  end
  cnt += n - r
}
(0...n).each { |i|
  res += a[i] * (n - 1)
}
res -= cnt * 10**8
puts res
