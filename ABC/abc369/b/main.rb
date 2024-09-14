n = gets.to_i
arr = n.times.map { gets.chomp.split }
l = 0
r = 0
ans = 0
arr.each { |a|
  int, lr = a[0].to_i, a[1]
  if lr == 'L'
    if l == 0
      l = int
    else
      ans += (int - l).abs
      l = int
    end
  else lr == 'R'
    if r == 0
      r = int
    else
      ans += (int - r).abs
      r = int
    end
  end
}
puts ans
