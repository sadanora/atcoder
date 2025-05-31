n, m = gets.split.map(&:to_i)
qs = m.times.map{ gets.split.map(&:to_i) }
arr = Array.new(n+2, 0)
qs.each do |l,r|
  arr[l] += 1
  arr[r+1] -= 1
end
n.times do |i|
  arr[i+1] += arr[i]
end
p arr[1..-2].min
