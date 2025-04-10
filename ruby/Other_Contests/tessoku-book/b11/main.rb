N = gets.to_i
A = gets.split.map(&:to_i).sort
Q = gets.to_i
Q.times do
  x = gets.to_i
  puts A.bsearch_index { |a| a >= x } || N
end
