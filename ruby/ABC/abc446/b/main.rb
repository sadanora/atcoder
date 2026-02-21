n, m = gets.split.map(&:to_i)
ds = (1..m).to_a
n.times do
  gets
  xs = gets.split.map(&:to_i)
  res = 0
  xs.each do |x|
    if ds.include?(x)
      res = x
      ds.delete(x)
      break
    end
  end
  puts res
end
