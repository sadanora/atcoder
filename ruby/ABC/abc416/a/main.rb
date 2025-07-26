n, l, r = gets.split.map(&:to_i)
s = gets.chomp.chars
puts s[l-1..r-1].all?('o') ? "Yes" : "No"
