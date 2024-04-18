N, K = gets.split.map(&:to_i)
h = Hash.new(0)
gets.split.map(&:to_i).each{h[_1] += 1}
arr = h.sort{|a, b| a[1] <=> b[1]}
s = arr.size
puts s <= K ? 0 : arr[0...s-K].map{_1[1]}.sum
