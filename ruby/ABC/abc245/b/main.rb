n = gets.to_i
arr = gets.split.map(&:to_i)
puts ((0..n).to_a - arr).min
