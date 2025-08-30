arr = gets.split.map(&:to_i)
(2..9).each do |i|
  ai = (arr[i-1] + arr[i-2]).to_s.reverse.to_i
  arr << ai
end
puts arr.last
