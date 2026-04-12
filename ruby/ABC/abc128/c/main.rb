n, m = gets.split.map(&:to_i)
kss = m.times.map { gets.split[1..].map { it.to_i - 1 } }
ps = gets.split.map(&:to_i)
ans = 0
(1<<n).times do |s|
  res = true
  kss.each_with_index do |ks, i|
    cnt = 0
    ks.each do |k|
      cnt += 1 if s[k] == 1
    end
    if cnt % 2 != ps[i]
      res = false
      break
    end
  end
  ans += 1 if res
end
puts ans

