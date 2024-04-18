gets
S = gets.chomp
pre = ''
ans = 0
S.chars.each{|c|
  next if c == pre
  ans += 1
  pre = c
}
puts ans
# ans = []
# i = 0
# while i < S.size
#   j = i + 1
#   while j < S.size && S[i] == S[j]
#     j += 1
#   end
#   ans << S[i]
#   i = j
# end
# puts ans.size
