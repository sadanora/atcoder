x = gets.to_i
res = 0
(1..x).each do |n|
  if (1..n).inject(:*) == x
    res = n
    break
  end
end
puts res
