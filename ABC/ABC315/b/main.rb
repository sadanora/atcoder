M = gets.to_i
D = gets.split.map(&:to_i)
mid = (D.sum + 1) / 2
M.times do |i|
  if mid > D[i]
    mid -= D[i]
  else
    puts [i + 1, mid].join(' ')
    exit
  end
end
