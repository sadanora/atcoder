gets.to_i
s = gets.chomp.chars
t = gets.chomp.chars
s_size = s.size
t_size = t.size

ans = 'No'
if s == t
  ans = 'Yes'
elsif s_size == t_size
  count = 0
  s.each_with_index do |c,i|
    count += c != t[i] ? 1 : 0
  end
  ans = 'Yes' if count == 1
elsif (s_size - t_size) == -1
  pc = 0
  sc = 0
  while pc < s_size
    if s[pc] == t[pc]
      pc += 1
    else
      break
    end
  end
  while sc < s_size
    if s[s_size-1-sc] == t[t_size-1-sc]
      sc += 1
    else
      break
    end
  end
  ans = 'Yes' if (pc+sc)>=s_size
elsif (s_size - t_size) == 1
  pc = 0
  tc = 0
  while pc < t_size
    if t[pc] == s[pc]
      pc += 1
    else
      break
    end
  end
  while tc < t_size
    if t[t_size-1-tc] == s[s_size-1-tc]
      tc += 1
    else
      break
    end
  end
  ans = 'Yes' if (pc+tc)>=t_size
end
puts ans
