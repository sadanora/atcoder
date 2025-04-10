n = gets.to_i
s = gets.chomp.split('')
h = s.tally
if h.length == 1
  puts h.keys[0]  
elsif h["T"] > h["A"]
  puts 'T'
elsif h["T"] < h["A"]
  puts 'A'
elsif s[-1] == 'A'
  puts 'T'
else
  puts 'A'
end
