N = gets.to_i
A = N.times.map { gets.split.map(&:to_i) }
A.each do |a|
  arr = []
  a.each_with_index do |n, i|
    arr << i + 1 if n == 1
  end
  puts arr.join(' ')
end
