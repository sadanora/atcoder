gets
puts 2.times.map { gets.split.map(&:to_i).max }.sum
