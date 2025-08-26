n, m, t = gets.split.map(&:to_i)
lt = 0
current = n
ans = "Yes"
(m+1).times do |i|
  a, b = i < m ? gets.split.map(&:to_i) : [t, t]

  current -= a - lt
  if current <= 0
    ans = "No"
    break
  end
  current = [n, current + b - a].min
  lt = b
end
puts ans
