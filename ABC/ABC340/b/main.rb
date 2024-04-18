Q = gets.to_i
query = Q.times.map { gets.split.map(&:to_i) }
arr = []
query.each do |q|
  if q[0] == 1
    arr << q[1]
  else
    puts arr[-q[1]]
  end
end
