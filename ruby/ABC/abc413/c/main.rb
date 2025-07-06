q = gets.to_i
a = []
q.times do
  case gets.split.map(&:to_i)
  in [1, c, x]
    a << [c, x]
  in [2 , k]
    sum = 0
    while a[0][0] < k
      c, x = a[0]
      sum += c * x
      k -= c
      a.shift
    end
    sum += k * a[0][1]
    a[0][0] -= k
    puts sum
  end
end
