S = gets.chomp
ans = []
S.length.times do |i|
  S.length.times do |j|
    if i <= j
      s = S[i..j]
      ans << s
    end
  end
end
puts ans.uniq.count
