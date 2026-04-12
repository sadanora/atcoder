t, x = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
curr = arr[0]
puts [0, curr].join(" ")
arr[1..].each_with_index do |a, i|
  if (curr-a).abs >= x
    curr = a
    puts [i+1, curr].join(" ")
  end
end

