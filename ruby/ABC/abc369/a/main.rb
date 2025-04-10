a, b = gets.split.map(&:to_i)
diff = (a - b).abs
ans = 1
if diff.even? && diff >= 2
  ans = 3
elsif diff.odd?
  ans = 2
end
puts ans
