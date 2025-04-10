N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)
ans = 'No'
P.each do |p|
  Q.each do |q|
    if p + q == K
      ans = 'Yes'
      break
    end
  end
end
puts ans
