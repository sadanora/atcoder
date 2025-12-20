t = gets.to_i
t.times do
  n = gets.to_i
  reindeers = n.times.map{ gets.split.map(&:to_i) }.sort_by { _1.sum }
  # psum = reindeers.transpose[1].sum
  # pw = reindeers.map(&:sum)
  sleigh = 0
  psum = reindeers.transpose[1].sum
  n.times do |i|
    weight, power = reindeers[i]
    psum -= power
    sleigh += weight
    if sleigh > psum
      puts i
      break
    end
  end
end
