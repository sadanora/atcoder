n = gets.to_i
as = gets.split.map(&:to_i)
m = gets.to_i
bs = gets.split.map(&:to_i)
c = 0
arr = [false] * 1010
bs.each do |b|
  arr[b] = true
end
as.each do |a|
  c += a
  c = 0 if arr[c]
end
puts c
