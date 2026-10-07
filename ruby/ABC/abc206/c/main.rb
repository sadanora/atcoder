n = gets.to_i
as = gets.split.map(&:to_i)
h = as.tally
ans = n*(n-1)/2
h.each do |k, v|
  next if v == 1
  ans -= v*(v-1)/2
end
p ans
