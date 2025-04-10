n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = (a + b).sort
c.each_cons(2) { |j, i|
  if a.include?(j) && a.include?(i)
    puts 'Yes'
    exit
  end
}
puts 'No'
