n, t = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
res = 0
open = 0
arr.each do |a|
  if open < a
    res += a - open
    open = a + 100
  end
end
res += t - open if open < t
puts res

