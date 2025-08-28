n, k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort
puts arr[0..k-1].sum
