S = gets.chomp
b = %w(A C G T)
ans = []
cnt = 0
S.chars.each_with_index{|s, i|
  if b.find{_1 == s}
    cnt += 1
    ans << cnt if i + 1 == S.size
  else
    ans << cnt
    cnt = 0
  end
}
puts ans.max
