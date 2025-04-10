n, q = gets.split.map(&:to_i)
s = '..' + gets.chomp + '..'
count = s.scan('ABC').size

q.times.each do
  x, c = gets.split
  x = x.to_i

  before = s[x-1..x+3].scan('ABC').size
  s[x+1] = c
  after = s[x-1..x+3].scan('ABC').size
  diff = after - before
  puts count + diff
  count += diff
end
