puts (1..gets.to_i).filter{|n| n % 5 != 0 && n % 3 != 0}.sum
