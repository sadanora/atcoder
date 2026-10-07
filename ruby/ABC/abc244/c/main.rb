require 'set'

$stdout.sync = true
n = gets.to_i
unused = Set.new(1..2*n+1)
loop do
  t = unused.first
  puts t
  unused.delete(t)

  a = gets.to_i
  exit if a == 0
  
  unused.delete(a)
end
