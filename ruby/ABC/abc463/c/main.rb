n = gets.to_i
hls = n.times.map { gets.split.map(&:to_i) }
q = gets.to_i
ts = gets.split.map(&:to_i)
arr = []
hls.each do |h, l|
  while !arr.empty? && arr[-1][0] <= h
    arr.pop
  end
  arr << [h,l]
end

ts.each do |t|
  puts arr.bsearch { _1[1] > t }[0]
end
