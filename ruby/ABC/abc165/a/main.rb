K = gets.to_i
A, B = gets.split.map(&:to_i)
puts 1 <= B / K - (A - 1) / K ? 'OK' : 'NG'
