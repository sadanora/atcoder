s = gets.split.map(&:to_i)
if s != s.sort
  puts 'No'
  exit
end
s.each { |i|
  unless (100 <= i && i <=675) && (i % 25 == 0)
    puts 'No'
    exit
  end
}
puts 'Yes'
