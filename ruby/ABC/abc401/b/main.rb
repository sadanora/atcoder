n = gets.to_i
q = false
res = 0
n.times do |i|
  s = gets.chomp
  if s == "login"
    q = true
  elsif s == "logout"
    q = false
  elsif s == "private" && !q
    res += 1
  end
end
puts res
