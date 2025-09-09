n, k = gets.split.map(&:to_i)
res = Array.new(n, nil)
k.times do
  gets
  gets.split.map(&:to_i).each do |i|
    res[i-1] = true
  end
end
puts res.count(nil)
