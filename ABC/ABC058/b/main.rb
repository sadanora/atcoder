O = gets.chomp.chars
E = gets.chomp.chars
puts O.map.with_index{|o, i| E[i] ? o + E[i] : o}.join
