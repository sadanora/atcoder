n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0
1.upto(n) do |i|
  n.times do |j|
    count = 1
    current = arr[j]
    index = i + j
    while index < n
      break if arr[index] != current
      count += 1
      index += i
    end
    ans = [ans, count].max
  end
end
puts ans
