n = gets.to_i
arr = gets.split.map(&:to_i)
ans = arr.uniq.sort
puts ans.size
puts ans.join(" ")
