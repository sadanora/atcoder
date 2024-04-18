s = 'a'.ord - 1
puts gets.split.map(&:to_i).map{(_1 + s).chr}.join
