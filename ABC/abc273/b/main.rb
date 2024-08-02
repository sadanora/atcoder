x, k = gets.split.map(&:to_i)
(0...k).each { |i|
  x /= 10**i
  mod = x % 10
  if mod <= 4
    x = (x - mod) * (10**i)
  else
    x = (x + (10 - mod)) * (10**i)
  end
}
puts x
