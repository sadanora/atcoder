h,w,x,y = gets.split.map(&:to_i)
arr = h.times.map{ gets.chomp.split('') }
arr = arr.map { _1.prepend(nil) }
arr.prepend(Array.new(w+1, nil))
t = gets.chomp.split('')
homes = Array.new(h+1) { Array.new(w+1, nil)}
current = [x, y]
t.each do |i|
  a, b = current
  if i == 'L' && arr[a][b-1] != '#'
    b -= 1
  elsif i == 'R' && arr[a][b+1] != '#'
    b += 1
  elsif i == 'U' && arr[a-1][b] != '#'
    a -= 1
  elsif i == 'D' && arr[a+1][b] != '#'
    a += 1
  end
  homes[a][b] = 1 if arr[a][b] == '@' && homes[a][b].nil?
  current = [a, b]
end
puts [current[0], current[1], homes.flatten.compact.sum].join(' ')
