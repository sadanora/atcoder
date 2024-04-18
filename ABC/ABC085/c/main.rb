N, Y = gets.split.map(&:to_i)
(0..N).each { |a|
  (0..(N-a)).each { |b|
    c = N - a - b
    next if c < 0
    sum = a * 10000 + b * 5000 + c * 1000
    return puts "#{a} #{b} #{c}" if sum == Y
  }
}
puts "-1 -1 -1"
