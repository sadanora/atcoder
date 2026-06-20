n, x = gets.chomp.split
n = n.to_i
arr = n.times.map { gets.chomp.chars }
h = {A: 0, B: 1, C: 2, D: 3, E: 4}
t = h[x.to_sym]
ans = "No"
arr.each do |s|
  if s[t] == "o"
    ans = "Yes"
    break
  end
end
puts ans
