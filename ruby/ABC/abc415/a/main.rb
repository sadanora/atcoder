n = gets.to_i
arr = gets.split.map(&:to_i)
x = gets.to_i
puts arr.include?(x) ? "Yes" : "No"
