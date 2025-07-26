s = gets.chomp
s = s.gsub(/\./, 'o')
1.upto(s.size-1) do |i|
  if s[i] == "o"
    s[i] = s[i-1] == "#" ? "o" : "."
  else
    s[i] = "#"
  end
end
puts s
