p = gets.to_i
ans = 0
(1..10).to_a.reverse.each {|i|
  j = (1..i).inject(:*)
  while j <= p
    ans += 1
    p -= j
  end
}
puts ans
