n = gets.to_i
arr = gets.split.map(&:to_i)
cs = Array.new(n+1, 0)
(1..n).each { cs[it] = cs[it-1] + arr[it-1] }
(1..n).each do |k|
  max = 0
  (0..n-k).each do |l|
    r = l + k
    res = cs[r] -cs[l]
    max = res > max ? res : max
  end
  puts max
end

