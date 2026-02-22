n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
cs = Array.new(n+1, 0)
(1..n).each { cs[it] = cs[it-1] + as[it-1] }
(n-k+1).times do |l|
  r = l + k
  puts cs[r] - cs[l]
end

