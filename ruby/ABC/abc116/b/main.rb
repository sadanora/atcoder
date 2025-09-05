def func(n)
  n.even? ? n/2 : 3*n + 1
end

s = gets.to_i
arr = [s]
loop do
  t = func(arr[-1])

  if arr.find { t == _1 }
    puts arr.size.succ
    exit
  end
  arr << t
end
