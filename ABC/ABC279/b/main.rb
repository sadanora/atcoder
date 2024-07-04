s = gets.chomp
t = gets.chomp
s_size = s.size
t_size = t.size
ans = 'No'
if s_size >= t_size
  (s_size - t_size + 1).times { |l|
    if s[l..(l + t_size - 1)] == t
      ans = 'Yes'
      break
    end
  }
end
puts ans
