A, B = gets.split.map(&:to_i)
ans = -1
(1..10000).each { |n|
  if (n * 0.08).floor == A && (n * 0.1).floor == B
    ans = n
    break
  end
}
puts ans
