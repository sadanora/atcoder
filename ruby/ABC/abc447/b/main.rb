s = gets.chomp
sh = s.chars.tally
m = sh.values.max
sh.filter{ _2 == m }.each do |k, _|
  s.delete!(k)
end
puts s
