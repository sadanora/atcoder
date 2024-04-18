N = gets.to_i
branches = N.times.map{gets.split.map(&:to_i)}
puts (0..23).map{|t|
  num = 0
  branches.each{|b|
    utc = (t + b[1]) % 24
    num += b[0] if utc >= 9 && utc < 18
  }
  num
}.max
