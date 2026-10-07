n, q = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
q.times do
  x = gets.to_i
  puts n - (as.bsearch_index { _1 >= x } || n)
end
