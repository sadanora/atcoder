n, m, k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
queue = Array.new(m, 0)
sum = 0
arr.each do |a|
  sum -= queue[0]
  queue.shift
  if (sum + a) <= k
    puts "Yes"
    queue << a
    sum += a
  else
    puts "No"
    queue << 0
  end
end
