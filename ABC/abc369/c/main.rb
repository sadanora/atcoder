def calc(arr)
  combis = []
  arr.size.times do |i|
    arr.combination(i+1) { |n| combinations << n }
  end
  combis.size
end

n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0
tmp = []
diff = 0
(1..n-1).each { |i|
  d = (arr[i] - arr[i-1]).abs
  if i == n - 1
    calc(tmp)
}
puts ans
