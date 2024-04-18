S = gets.to_i.digits
puts S.select.with_index{|s, i| i.even?}.uniq.find_index{|n| n == 1} ? 'No' : 'Yes'
