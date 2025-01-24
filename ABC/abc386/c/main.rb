def solve?(s, t)
  return true if s == t

  s_size = s.size
  t_size = t.size

  if s_size == t_size
    cnt = 0
    s_size.times do |i|
      cnt += 1 if s[i] != t[i]
    end
    return true if cnt <= 1
  end

  if s_size < t_size
    s, t = t, s
    s_size, t_size = t_size, s_size
  end
  return false if s_size != t_size+1

  maxl = 0
  maxr = 0
  t_size.times do |i|
    break if s[i] != t[i]
    maxl += 1
  end
  (-1).downto(-(t_size)) do |i|
    break if s[i] != t[i]
    maxr += 1
  end
  (maxl + maxr) >= t_size ? true : false
end

gets
s = gets.chomp.chars
t = gets.chomp.chars
puts solve?(s, t) ? 'Yes' : 'No'
