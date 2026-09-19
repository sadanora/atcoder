n = gets.to_i
s = gets.chomp
t = gets.chomp
n.times do |i|
  a = s[i]
  b = t[i]
  unless a == b || b == '*'
    puts "No"
    exit
  end
end
puts "Yes"
