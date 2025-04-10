n, a = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
time = 0
t.each do |i|
  time += i - time if time < i
  time += a
  puts time
end
