n = gets.to_i
arr = Array.new(n) { Array.new(n, '.')}
(1..n).each do |i|
  j = n+1-i
  if i <= j
    (i..j).to_a.repeated_permutation(2).to_a.each do |a,b|
      arr[a-1][b-1] = i.odd? ? '#' : '.'
    end
  end
end
puts arr.map { _1.join('') }
