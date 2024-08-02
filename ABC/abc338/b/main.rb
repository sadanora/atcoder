S = gets.chomp
d = Hash.new(0)
S.chars.each{|s|
  d[s] += 1
}
puts d.group_by{|k,v| v}.max[1].sort.first[0]
