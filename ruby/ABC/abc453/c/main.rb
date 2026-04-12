n = gets.to_i
arr = gets.split.map { it.to_i << 1 }
ans = 0
(1<<n).times do |i|
  c_pos = 1
  score = 0
  n.times do |j|
    b_pos = c_pos
    # if i.anybits?(1<<j)
    # if i&(1<<j) != 0
    if i[j] == 1
      c_pos -= arr[j]
    else
      c_pos += arr[j]
    end
    score += 1 if (b_pos*c_pos) < 0
  end
  ans = [ans, score].max
end
puts ans

