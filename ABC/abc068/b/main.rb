N = gets.to_i
maxcnt = 0
ans = 1
(1..N).each{|n|
  cnt = 0
  x = n
  while x % 2 == 0
    cnt += 1
    x /= 2
  end
  if cnt > maxcnt
    ans = n
    maxcnt = cnt
  end
}
puts ans
