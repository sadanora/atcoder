puts gets.to_i.digits.each_cons(2).all? { |a, b| a < b } ? 'Yes' : 'No'
