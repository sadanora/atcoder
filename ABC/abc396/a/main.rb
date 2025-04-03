n = gets.to_i
arr = gets.split.map(&:to_i)
(n-2).times do |i|
  if arr[i] == arr[i+1] && arr[i] == arr[i+2]
    puts 'Yes'
    exit
  end
end
puts 'No'
