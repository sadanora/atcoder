n = gets.to_i
ss = gets.split
score = ["abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
ans = []
ss.each do |s|
  a = s[0]
  score.each.with_index(2) do |sc, i|
    if sc.include?(a)
      ans << i
      break
    end
  end
end
puts ans.join()
