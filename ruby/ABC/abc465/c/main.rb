n = gets.to_i
s = gets.chomp.chars
arr = []
rev = false
1.upto(n) do |i|
  if rev
    arr.unshift(i)
  else
    arr << i
  end
  rev = !rev if s[i-1] == 'o'
end
arr.reverse! if rev
puts arr.join(" ")
