n, m = gets.split.map(&:to_i)
l = n.even? ? n/2 : (n/2 + 1)
puts m <= l ? "Yes" : "No"
