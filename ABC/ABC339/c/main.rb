N = gets.to_i
S = gets.split.map(&:to_i)
arr = [0] * (N+1)
(0...N).each{|i|
  arr[i+1] = arr[i] + S[i]
}
puts S.sum + arr.min.abs
