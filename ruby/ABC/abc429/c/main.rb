n = gets.to_i
arr = gets.split.map(&:to_i)
t = arr.tally
mul = t.filter { _2 >= 2 }
ans = 0
mul.each do |k, v|
  c = (v * (v-1)) / 2
  ans += (arr.size - v) * c
end
puts ans
