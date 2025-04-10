s = gets.chomp
t = gets.chomp

if s == t
  puts 0
  exit
else
  ([s.size, t.size].max).times { |i|
    if s[i] != t[i]
      puts i + 1
      exit
    end
  }
end
