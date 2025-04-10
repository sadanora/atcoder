S = gets.chomp
T = gets.chomp
sides = %w[A B C D E A E D C B A].each_cons(2).map(&:join)
puts sides.include?(S) == sides.include?(T) ? 'Yes' : 'No'
