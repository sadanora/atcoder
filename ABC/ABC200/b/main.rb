n, k = gets.split.map(&:to_i)
k.times do
  n = n % 200 == 0 ? n / 200 : n.to_s.concat('200').to_i
end
puts n
