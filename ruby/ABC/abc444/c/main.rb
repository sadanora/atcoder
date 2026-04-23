def judge(arr, l)
  while !arr.empty? && arr[-1] == l
    arr.pop
  end

  size = arr.size
  return if size.odd?
  (size/2).times do |i|
    return if (arr[i]+arr[size-1-i]) != l
  end

  l
end

n = gets.to_i
as = gets.split.map(&:to_i).sort
res = []
res << judge(as.dup, as[-1])
res << judge(as.dup, as[0] + as[-1])
puts res.compact.join(' ')
