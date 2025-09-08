n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
hash = Hash.new(0)
as.each { hash[_1] += 1 }
bs.each do |b|
  if hash[b] < 1
    puts "No"
    exit
  end

  hash[b] -= 1
end
puts "Yes"
