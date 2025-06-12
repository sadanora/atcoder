gets
t = gets.chomp.chars
xy = [0, 0]
h = { 0 => [0, 1], 1 => [1, -1], 2 => [0, -1], 3 => [1, 1] }
cnt = 0
t.each do |c|
  if c == 'R'
    cnt += 1
    next
  end
  i, j = h[cnt % 4]
  xy[i] += j
end
puts xy.join(" ")
