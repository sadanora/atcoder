n = gets.to_i
arr = gets.split.map(&:to_i)
cur = arr[..2].sort
puts cur[0]
(3..(n-1)).each do |i|
  ai = arr[i]
  if ai > cur[0]
    cur << ai
    cur = cur.sort[-3..]
    puts cur[0]
  else
    puts cur[0]
  end
end
