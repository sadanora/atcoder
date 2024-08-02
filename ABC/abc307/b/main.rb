require 'set'
n = gets.to_i
arr = n.times.map{ gets.chomp }
arr.permutation(2).to_a.each { |ss|
  t = ss.join
  if t == t.reverse
    puts 'Yes'
    exit
  end
}
puts 'No'
