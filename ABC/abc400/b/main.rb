n, m = gets.split.map(&:to_i)
res = (m+1).times.map { n ** _1 }.sum
puts res <= 10**9 ? res : 'inf'
