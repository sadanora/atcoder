a, b = gets.split.map(&:to_i)
if ((a+b) == 9) || ((a-b) == 9) || ((a*b) == 9) || ((a/(b.to_f)) == 9)
  puts "Nine"
  exit
end
puts "Nein"
