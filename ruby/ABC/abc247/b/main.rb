N = gets.to_i
names = N.times.map{ gets.split }
h = Hash.new(0)
names.each{|s, t|
  h[s] += 1
  h[t] += 1 if s != t
}
puts names.all?{|s, t| h[s] == 1 || h[t] == 1} ?  "Yes" : "No"
