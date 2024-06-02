n, m, k = gets.split.map(&:to_i)
car = m.times.map {
  input = gets.split
  [input[0].to_i, input[1..-2].map(&:to_i), input[-1]]
}
ans = 0
(1 << n).times { |bit|
  cnt = 0
  m.times { |i|
    _, a, r = car[i]
    res = a.count { |j| bit[j - 1] == 1 }
    break unless (k <= res && r == 'o') || (k > res && r == 'x')
    cnt += 1
  }
  ans += 1 if cnt == m
}
puts ans
