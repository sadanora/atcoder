S = gets.chomp
ans = 0
(0..S.length - 1).each do |i|
  (i..S.length - 1).each do |j|
    ss = S[i..j]
    l = ss.length
    ans = l if ss == ss.reverse && l > ans
  end
end
puts ans
