N = gets.to_i
A = gets.split.map(&:to_i)
cnt = Hash.new(0)
N.times{|i| cnt[i+1] = 0}
A.each{|a|
  cnt[a] += 1
}
puts cnt.map{_1[1]}
