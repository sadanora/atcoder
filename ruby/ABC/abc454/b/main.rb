n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
puts arr.size == arr.uniq.size ? "Yes" : "No"
(1..m).each do |i|
  unless arr.include?(i)
    puts "No"
    exit
  end
end
puts "Yes"
