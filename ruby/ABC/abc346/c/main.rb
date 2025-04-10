N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).uniq
sum = K * (K + 1) / 2
A.each { |x| sum -= x if x <= K }
puts sum
