s = gets.chomp
b = [false] * 26
s.chars.each do |a|
  b[a.ord-97] = true
end
o = b.find_index(false)
puts o ? (o+97).chr : "None"
