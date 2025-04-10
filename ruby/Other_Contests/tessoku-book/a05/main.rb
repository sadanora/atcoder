N, K = gets.split.map(&:to_i)
ans = 0
(1..N).each do |x|
  (1..N).each do |y|
    z = K - x - y
    if z < 1 || z > N
      next
    elsif x + y + z == K
      ans += 1
    end
  end
end
puts ans
