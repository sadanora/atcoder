def f(chars)
  as = [0]
  chars.each { |c| c == 'A' ? as[-1] += 1 : as << 0 }
  as
end

s = gets.chomp
t = gets.chomp
if s.delete('A') != t.delete('A')
  puts -1
  exit
end

sa = f(s.chars)
ta = f(t.chars)
ans = 0
sa.size.times { |i| ans += (sa[i]-ta[i]).abs }
puts ans
