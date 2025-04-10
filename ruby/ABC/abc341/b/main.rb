N = gets.to_i
a = gets.split.map(&:to_i)
ST = (N - 1).times.map { gets.split.map(&:to_i) }
ST.each_with_index do |arr, i|
  s, t = arr
  c = a[i] / s
  a[i] -= s * c
  a[i + 1] += t * c
end
puts a[-1]
