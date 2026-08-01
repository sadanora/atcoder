n = gets.to_i
s = gets.chomp.to_s
ans = 0
if n == 1
  ans = s[0] == 'x' ? 1 : 0
  puts ans
  exit
end

n.times do |i|
  next if s[i] == 'o'

  if (i - 1) < 0
    ans += 1 if s[i+1] == 'x'
  elsif (i + 1) > n-1
    ans += 1 if s[i-1] == 'x'
  else
    ans += 1 if s[i+1] == 'x' && s[i-1] == 'x'
  end
end
puts ans
