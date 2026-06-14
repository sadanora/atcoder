n = gets.to_i
arr = n.times.map { gets.split.map(&:to_i)[1..] }
res = Array.new(n+1) {[]}
arr.each_with_index do |as, i|
  as.each do |a|
    res[a] << i+1
  end
end
res[1..].each do |r|
  s = r.size
  puts "#{s} #{r.join(" ")}"
end
