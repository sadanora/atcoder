S = gets.chomp
words = []
i = 0
while i < S.size
  j = i + 1
  while j < S.size && S[j].downcase == S[j]
    j += 1
  end
  words << S[i..j]
  i = j + 1
end
puts words.sort{_1.downcase <=> _2.downcase}.join
