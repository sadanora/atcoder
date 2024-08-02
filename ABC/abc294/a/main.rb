gets
puts gets.split.map(&:to_i).select{_1.even?}.join(' ')
