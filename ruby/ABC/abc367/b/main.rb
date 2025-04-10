x = gets.to_f.truncate(3)
puts x.to_s[-1] == '0' ? x.to_i : x
