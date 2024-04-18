N = gets.to_i
arr = Array.new(N){gets.to_i}
b = 1
N.times{|i|
  b = arr[b - 1]
  if b == 2
    puts (i+1)
    exit
  end
}
puts '-1'
