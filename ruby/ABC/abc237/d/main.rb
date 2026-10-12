n = gets.to_i
s = gets.chomp.chars
queue = [n]
(n-1).downto(0) { |i| s[i] == 'L' ? queue << i : queue.unshift(i) }
puts queue.join(' ')
