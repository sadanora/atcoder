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
    res = 0
    a.each { |j| res += 1 if bit[j - 1] == 1 }
    if (k <= res && r == 'o') || (k > res && r == 'x')
      cnt += 1
    else
      break
    end
  }
  ans += 1 if cnt == m
}
puts ans
