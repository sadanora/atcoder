N, K = gets.split.map(&:to_i)
arr = Array.new(N){gets.to_i}.sort
hmin = 10**9
arr.each_with_index{|h, i|
  if arr[i+K-1]
    diff = arr[i+K-1] - h
    hmin = diff if diff < hmin
  end
}
puts hmin
