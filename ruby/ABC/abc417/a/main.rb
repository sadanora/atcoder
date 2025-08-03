n, a, b = gets.split.map(&:to_i)
s = gets.chomp
puts s[a..(n-1-b)]
