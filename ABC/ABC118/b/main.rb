N, M = gets.split.map(&:to_i)
h = Hash.new(0)
N.times{
  gets.split.map(&:to_i).drop(1).map{h[_1] += 1}
}
puts h.count{|_,v| v == N}
