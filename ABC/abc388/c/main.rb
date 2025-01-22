n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0
arr.each do |a|
  t = a/2
  ans += arr.bsearch_index { |x| x > t  }
end
puts ans
