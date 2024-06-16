n, m = gets.split.map(&:to_i)
arr = n.times.map { gets.chomp }

# arr.each {|a|

# }
[0, 1].repeated_permutation(n) do |bits|
  p bits
end
