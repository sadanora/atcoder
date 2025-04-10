n, m = gets.split.map(&:to_i)
arr = m.times.map { gets.chomp.split }
f = Array.new(n, 0)
arr.each do |ab|
  a, b = ab
  a = a.to_i
  if f[a-1] == 1 || b == 'F'
    puts 'No'
  else
    f[a-1] += 1
    puts 'Yes'
  end
end
