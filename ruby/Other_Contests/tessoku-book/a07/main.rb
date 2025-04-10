D = gets.to_i
N = gets.to_i
LR = N.times.map { gets.split.map(&:to_i) }
attendees = Array.new(D + 2) { 0 }
LR.each do |lr|
  l, r = lr
  attendees[l] += 1
  attendees[r + 1] -= 1
end
cs = [0]
(1..D).each { |d| cs[d] = cs[d - 1] + attendees[d] }
puts cs[1..]
