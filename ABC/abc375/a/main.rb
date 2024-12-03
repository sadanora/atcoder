n = gets.to_i
s = gets.chomp
cnt = 0
(n-2).times do |i|
  next if s[i] != '#'
  cnt += 1 if s[i+1] == '.' && s[i+2] == '#'
end
puts cnt
