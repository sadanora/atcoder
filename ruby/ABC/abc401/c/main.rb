n, k = gets.split.map(&:to_i)
s = k
arr = Array.new(n+1, 1)
(k..n+1).each do |i|
  arr[i] = s
  s -= arr[i-k]
  s += arr[i]
  s %= 1000_000_000
end
puts arr[n]
