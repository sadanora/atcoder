n, q = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
sorted = as.zip(1..).sort.first(6)
q.times do
  gets
  removed = gets.split.map(&:to_i)
  sorted.each do |a, i|
    unless removed.include?(i)
      puts a
      break
    end
  end
end
