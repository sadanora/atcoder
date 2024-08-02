N = gets.to_i
ans = []
(0..N).each{|i|
  (0..N).each{|j|
    (0..N).each{|k|
      ans << "#{i} #{j} #{k}" if i + j + k <= N
    }
  }
}
puts ans
